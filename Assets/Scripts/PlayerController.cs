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

    [SerializeField] private Slider _slider;

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void FixedUpdate()
    {
        _horizontalM = Input.GetAxisRaw("Horizontal") * _speed;
        _verticalM = Input.GetAxisRaw("Vertical") * _speed;

        //transform.position = new Vector2(transform.position.x + _horizontalM, transform.position.y + _verticalM);

        if (!_stunned && !_gettingWaterOut)
        {
            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(_horizontalM, _verticalM);
        }

        if (Input.GetKeyDown(KeyCode.E))
        {
            if (!_gettingWaterOut && !_stunned)
            {
                TakeOutWater();
            }
        }
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

    IEnumerator GetStunned()
    {
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
}
