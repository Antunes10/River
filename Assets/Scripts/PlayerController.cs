using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour
{
    private float _horizontalM;
    private float _verticalM;
    [SerializeField] private float _speed;
    private bool _stunned;
    private bool _gettingWaterOut;
    private bool _usingOak;
    public bool _usingNimbus;
    private bool _isRaining;

    [SerializeField] private Slider _slider;
    private LevelManager _levelManager;

    void Start()
    {
        _levelManager = LevelManager.Instance;
        _levelManager.StartRain += IsRaining;
        _levelManager.EndRain += StopRaining;
    }

    // Update is called once per frame
    void Update()
    {
        if (_isRaining && !_usingOak)
        {
            _slider.value += 0.05f;
        }

        _horizontalM = Input.GetAxisRaw("Horizontal") * _speed;
        _verticalM = Input.GetAxisRaw("Vertical") * _speed;

        //transform.position = new Vector2(transform.position.x + _horizontalM, transform.position.y + _verticalM);

        if (!_stunned && !_gettingWaterOut)
        {
            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(_horizontalM, _verticalM);
        }

        if (Input.GetKeyDown(KeyCode.E) && !_gettingWaterOut && !_stunned && !_usingOak && !_usingNimbus)
        {
            if (!_gettingWaterOut && !_stunned)
            {
                TakeOutWater();
            }
        }

        if (Input.GetKeyDown(KeyCode.R) && !_gettingWaterOut && !_stunned && !_usingOak && !_usingNimbus)
        {
            StartCoroutine(UseOak());
        }
    }

    private void FixedUpdate()
    {
        
    }

    public void TakeOutWater()
    {
        gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
        _slider.value -= 5;
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
        if (!_stunned)
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

    IEnumerator GetStunned()
    {
        _usingNimbus = false;
        _usingOak = false;
        _gettingWaterOut = false;

        _stunned = true;
        this.GetComponent<SpriteRenderer>().color = Color.red;
        yield return new WaitForSeconds(3);
        this.GetComponent<SpriteRenderer>().color = Color.white;
        _stunned = false;
    }

    IEnumerator GetWater()
    {
        _gettingWaterOut = true;
        this.GetComponent<SpriteRenderer>().color = Color.yellow;
        yield return new WaitForSeconds(3);
        this.GetComponent<SpriteRenderer>().color = Color.white;
        _gettingWaterOut = false;
    }

    IEnumerator UseOak()
    {
        _usingOak = true;
        this.GetComponent<SpriteRenderer>().color = Color.green;
        yield return new WaitForSeconds(3);
        this.GetComponent<SpriteRenderer>().color = Color.white;
        _usingOak = false;
    }
}
