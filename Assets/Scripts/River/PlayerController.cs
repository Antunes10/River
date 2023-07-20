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
    private bool _victory;

    void Start()
    {
        _levelManager = LevelManager.Instance;
        _gameManager = GameManager.Instance;
        _levelManager.StartRain += IsRaining;
        _levelManager.EndRain += StopRaining;
        _levelManager.Victory += Victory;
        _helmetState = HelmetState.normal;

        //Assign character checks
        _hasOak = _gameManager.GetHasOak();
        _hasNimbus = _gameManager.GetHasNimbus();
        _hasCotton = _gameManager.GetHasCotton();
        _hasSparks = _gameManager.GetHasSparks();
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
        if (_victory)
        {
            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
            transform.Translate(Vector3.right * Time.deltaTime * 5, Camera.main.transform);
        }
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
        /*====================================
        Gives invulnerability to the player
        Triggers the Blink Animation
        Add water to the water slider
        Checks if the player lost the game
        ====================================*/

        _invulnerable = true;
        _playeranimations.HelmetHit();
        _slider.value += amount;
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

    void Victory()
    {
        /*=================================================================================
        changes to stunned so the player can't control the helmet
        Disables collider to avoid triggers
        Validates the victory bool so the FixedUpdate can apply Translation to the helmet
        Triggers the right animation because the helmet will move right
        =================================================================================*/

        _helmetState = HelmetState.stunned;
        _victory = true;
        gameObject.GetComponent<Collider2D>().enabled = false;
        _playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.right);
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
