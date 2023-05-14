using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour
{
    //Variables to check unlocked animals
    [SerializeField] private bool _hasNimbus;
    [SerializeField] private bool _hasOak;
    [SerializeField] private bool _hasCotton;
    [SerializeField] private bool _hasSparks;

    public HelmetState _helmetState;
    private bool _isRaining;

    [SerializeField] private float _speed;
    [SerializeField] private Slider _slider;
    private float _horizontalM;
    private float _verticalM;

    private GameManager _gameManager;
    private LevelManager _levelManager;
    public PlayerAnimations _playeranimations;

    public bool _invulnerable;

    void Start()
    {
        _levelManager = LevelManager.Instance;
        _gameManager = GameManager.Instance;
        _levelManager.StartRain += IsRaining;
        _levelManager.EndRain += StopRaining;
        _helmetState = HelmetState.normal;

        //Assign character checks
        _hasOak = _gameManager._hasOak;
        _hasNimbus = _gameManager._hasNimbus;
        _hasCotton = _gameManager._hasCotton;
        _hasSparks = _gameManager._hasSparks;
    }

    // Update is called once per frame
    void Update()
    {

        //Rise water level if its raining
        if (_isRaining && !_helmetState.Equals(HelmetState.oak))
        {
            _slider.value += 0.05f;
            if (_slider.value > 99)
            {
                LevelManager.Instance.LoseGame();
            }
        }


        //Move Helmet
        _horizontalM = Input.GetAxisRaw("Horizontal") * _speed;
        _verticalM = Input.GetAxisRaw("Vertical") * _speed;

        if (!_helmetState.Equals(HelmetState.stunned) && !_helmetState.Equals(HelmetState.water))
        {

            //Change Helmet Sprite
            if(_horizontalM > 0)
            {
                _playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.right);
                _horizontalM += 2;
            }
            else if(_horizontalM < 0)
            {
                _playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.left);
                _horizontalM = _horizontalM / _speed;
            }
            else if (_verticalM < 0)
            {
                _playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.bot);
            }
            else
            {
                _playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.idle);
            }

            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(_horizontalM, _verticalM);
        }


        //Get Water out of the Helmet
        if (Input.GetKeyDown(KeyCode.E) && _helmetState.Equals(HelmetState.normal))
        {
            TakeOutWater();
        }

        //Open Dog Hat
        if (Input.GetKeyDown(KeyCode.R) && _hasOak && _helmetState.Equals(HelmetState.normal))
        {
            UseOak();
        }
        else if(Input.GetKeyUp(KeyCode.R) && _hasOak && _helmetState.Equals(HelmetState.oak))
        {
            StopUseOak();
        }

        //Get Bird Beak on Front
        if (Input.GetKeyDown(KeyCode.Space) && _hasNimbus && _helmetState.Equals(HelmetState.normal))
        {
            UseNimbus();
        }
        else if (Input.GetKeyUp(KeyCode.Space) && _hasNimbus && _helmetState.Equals(HelmetState.nimbus))
        {
            StopUseNimbus();
        }

        //Pause Game
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            _levelManager.PauseUnpause();
        }
    }

    private void FixedUpdate()
    {
        
    }

    public void TakeOutWater()
    {
        gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
        _slider.value -= 5;
        if (_hasCotton)
        {
            _slider.value -= 5;
        }
        StartCoroutine(GetWater());
    }

    public void HitRock(float amount)
    {
        //jogador fica invulneravel
        _invulnerable = true;

        //acciona animação de blink
        _playeranimations.HelmetHit();

        //adiciona água ao slider
        _slider.value += amount;

        //verifica se o jogador perdeu
        if (_slider.value > 99)
        {
            LevelManager.Instance.LoseGame();
        }
    }

    public void HitBarbed()
    {
        if (!_helmetState.Equals(HelmetState.stunned))
        {
            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
            _playeranimations._animController.SetBool("Oak", false);
            _playeranimations._animController.SetBool("Nimbus", false);
            StartCoroutine(GetStunned());
        }
        
    }

    void IsRaining()
    {
        _isRaining = true;
    }

    void StopRaining()
    {
        _isRaining = false;
    }

    void UseOak()
    {
        _helmetState = HelmetState.oak;
        _playeranimations._animController.SetBool("Oak", true);
    }

    void StopUseOak()
    {
        _helmetState = HelmetState.normal;
        _playeranimations._animController.SetBool("Oak", false);
    }

    void UseNimbus()
    {
        _helmetState = HelmetState.nimbus;
        _playeranimations._animController.SetBool("Nimbus", true);
    }

    void StopUseNimbus()
    {
        _helmetState = HelmetState.normal;
        _playeranimations._animController.SetBool("Nimbus", false);
    }

    IEnumerator GetStunned()
    {
        _helmetState = HelmetState.stunned;
        this.GetComponent<SpriteRenderer>().color = Color.red;
        yield return new WaitForSeconds(3);
        this.GetComponent<SpriteRenderer>().color = Color.white;
        _helmetState = HelmetState.normal;
    }

    IEnumerator GetWater()
    {
        _helmetState = HelmetState.water;
        _playeranimations._animController.SetTrigger("GettingWater");
        this.GetComponent<SpriteRenderer>().color = Color.cyan;
        yield return new WaitForSeconds(3);
        if (_helmetState.Equals(HelmetState.water))
        {
            this.GetComponent<SpriteRenderer>().color = Color.white;
            _helmetState = HelmetState.normal;
        }
    }

    public enum HelmetState
    {
        normal = 0,
        stunned = 1,
        water = 2,
        nimbus = 3,
        oak = 4

    }
    
}
