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

    public HelmetState _helmetState;
    private bool _isRaining;

    [SerializeField] private float _speed;
    [SerializeField] private Slider _slider;
    private float _horizontalM;
    private float _verticalM;

    private GameManager _gameManager;
    private LevelManager _levelManager;

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
    }

    // Update is called once per frame
    void Update()
    {

        //Rise water level if its raining
        if (_isRaining && !_helmetState.Equals(HelmetState.oak))
        {
            _slider.value += 0.05f;
        }


        //Move Helmet
        _horizontalM = Input.GetAxisRaw("Horizontal") * _speed;
        _verticalM = Input.GetAxisRaw("Vertical") * _speed;
        if (!_helmetState.Equals(HelmetState.stunned) && !_helmetState.Equals(HelmetState.water))
        {
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

    public void HitRock()
    {
        _slider.value += 20;
        if(_slider.value > 99)
        {
            LevelManager.Instance.LoseGame();
        }
    }

    public void HitBarbed()
    {
        if (!_helmetState.Equals(HelmetState.stunned))
        {
            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
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
        this.GetComponent<SpriteRenderer>().color = Color.green;
    }

    void StopUseOak()
    {
        _helmetState = HelmetState.normal;
        this.GetComponent<SpriteRenderer>().color = Color.white;
    }

    void UseNimbus()
    {
        _helmetState = HelmetState.nimbus;
        this.GetComponent<SpriteRenderer>().color = Color.cyan;
    }

    void StopUseNimbus()
    {
        _helmetState = HelmetState.normal;
        this.GetComponent<SpriteRenderer>().color = Color.white;
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
        this.GetComponent<SpriteRenderer>().color = Color.yellow;
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
