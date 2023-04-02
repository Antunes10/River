using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] private float _speed;
    [SerializeField] private float _cooldown;

    public bool _barbed;
    public bool _barrier;
    public bool _debris;

    private float _timer;
    private float _timeToDetonate;
    private float multiplier;
    void Start()
    {
        _timer = Time.time;
        if (_debris)
        {
            _timeToDetonate = Random.Range(4, 6);
            multiplier = 1 / _timeToDetonate / 50;
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
        if (!collision.CompareTag("Player"))
        {
            return;
        }
        if (_barbed)
        {
            collision.GetComponent<PlayerController>().HitBarbed();
        }
        else if (_barrier && collision.GetComponent<PlayerController>()._helmetState.Equals(PlayerController.HelmetState.nimbus))
        {
            this.GetComponent<SpriteRenderer>().color = Color.cyan;
            return;
        }
        else
        {
            collision.GetComponent<PlayerController>().HitRock();
        }
    }
}
