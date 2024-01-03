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
        if(_player.transform.position.y > transform.position.y)
        {
            _thisSprite.sortingLayerName = "Player";
            _thisSprite.sortingOrder = 5;
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
            GetComponent<SpriteRenderer>().color -= new Color(multiplier, multiplier, multiplier, 0);
        }
        else if (_debris && Time.time - _timer > _timeToDetonate - 0.5f)
        {
            /*GetComponent<Collider2D>().enabled = true;
            transform.GetChild(0).gameObject.SetActive(true);*/
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

        //Verifica se é o player
        if (!collision.CompareTag("Player"))
        {
            return;
        }

        _inside = true;

        //Verifica qual o tipo de obstaculo e aplica os efeitos
        if (_barbed)
        {
            collision.GetComponent<PlayerController>().HitBarbed();
        }
        else if (_barrier)
        {
            if (collision.GetComponent<PlayerController>()._helmetState.Equals(PlayerController.HelmetState.nimbus))
            {
                this.GetComponent<SpriteRenderer>().sprite = _alternateSprite;
                GetComponent<Collider2D>().enabled = false;
            }
            else
            {
                collision.GetComponent<PlayerController>().HitRock(20);
                collision.GetComponent<PlayerController>().HitBarbed();
            }
        }
        else if(_debris)
        {
            collision.GetComponent<PlayerController>().HitRock(40);
        }
        else
        {
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
