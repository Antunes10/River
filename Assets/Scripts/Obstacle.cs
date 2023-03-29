using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] private float _speed;
    [SerializeField] private float _cooldown;
    [SerializeField] private bool _barbed;
    [SerializeField] private bool _barrier;
    private float _timer;
    void Start()
    {
        _timer = Time.time;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        gameObject.transform.position = new Vector2(transform.position.x - _speed, transform.position.y);
        if (Time.time - _timer > _cooldown)
        {
            Destroy(this.gameObject);
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
