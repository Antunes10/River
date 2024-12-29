using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] private float _speed;
    [SerializeField] private float _cooldown;
    [SerializeField] private Sprite _alternateSprite;
    [SerializeField] private Animator _animController;

    public bool _barbed;
    public bool _barrier;
    public bool _debris;
    public bool _debrisFalling = false;
    public int _animNumber;

    private float _timer;
    private float _timeToDetonate;
    private float multiplier;
    private bool _inside;

    private GameObject _player;
    private SpriteRenderer _thisSprite;
    void Start()
    {
        _player = GameObject.FindGameObjectWithTag("Player");
        _thisSprite = gameObject.GetComponent<SpriteRenderer>();

        _timer = Time.time;
        if (_debris)
        {
            _timeToDetonate = Random.Range(4, 6);
            multiplier = 1 / _timeToDetonate / 50;
        }
        InitiateAnim();
    }

    private void Update()
    {
        if (_inside)
        {
            return;
        }
        if(_player.GetComponent<Collider2D>().bounds.min.y > this.GetComponent<Collider2D>().bounds.min.y)
        {
            _thisSprite.sortingLayerName = "Player";
            _thisSprite.sortingOrder = 6;
        }
        else
        {
            _thisSprite.sortingLayerName = "Obstacles";
            _thisSprite.sortingOrder = 11;
        }
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        gameObject.transform.position = new Vector2(transform.position.x - _speed, transform.position.y);
        if (Time.time - _timer > _cooldown)
        {
            Destroy(this.gameObject);
        }

        if (_debris && Time.time - _timer < _timeToDetonate)
        {
            _debrisFalling = false;
            GetComponent<SpriteRenderer>().color -= new Color(multiplier, multiplier, multiplier, 0);
        }
        else if (_debris && Time.time - _timer > _timeToDetonate - 0.5f && !_debrisFalling)
        {
            _debrisFalling = true;
            AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.debrisFalling);
            GetComponent<Animator>().SetTrigger("Fall");
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        //Verifica se esta invulneravel
        if (_player.GetComponent<PlayerController>()._invulnerable)
        {
            return;
        }

        if (collision.CompareTag("NimbusBeak") && _barrier)
        {
            AudioManager.Instance.PlaySFX((int)AudioManager.SFXSounds.clothRip1, (int)AudioManager.SFXSounds.clothRip2);
            _animController.SetTrigger("Ripped");
            GetComponent<Collider2D>().enabled = false;
            return;
        }

        //Verifica se � o player
        if (!collision.CompareTag("Player"))
        {
            return;
        }

        _inside = true;

        //Verifica qual o tipo de obstaculo e aplica os efeitos
        if (_barbed)
        {
            AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.wireHit);
            collision.GetComponent<PlayerController>().HitBarbed(true);
        }
        else if (_barrier)
        {
            AudioManager.Instance.PlaySFX((int)AudioManager.SFXSounds.rockHit1, (int)AudioManager.SFXSounds.rockHit3);
            AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.clothHit);
            collision.GetComponent<PlayerController>().HitRock(20);
            collision.GetComponent<PlayerController>().HitBarbed(false);
        }
        else if(_debris)
        {
            collision.GetComponent<PlayerController>().HitRock(40);
        }
        else
        {
            AudioManager.Instance.PlaySFX((int)AudioManager.SFXSounds.rockHit1, (int)AudioManager.SFXSounds.rockHit3);
            collision.GetComponent<PlayerController>().HitRock(20);
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            _inside = false;
        }
    }

    public void InitiateAnim()
    {
        _animController.SetInteger("Int", _animNumber);
        _animController.SetBool("Ripped", false);

        if(_barbed)
        {
            _animController.SetTrigger("BarbedWire");
        }
        else if (_barrier)
        {
            _animController.SetTrigger("Barrier");
        }
        else if (_debris)
        {
            return;
        }
        else
        {
            _animController.SetTrigger("Rock");
        }
    }
}
