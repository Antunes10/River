using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleGenerator : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] float _topLimit;
    [SerializeField] float _botLimit;
    [SerializeField] GameObject[] _obstacles;

    private float _cooldown;
    private float _timer;

    void Start()
    {
        _cooldown = 3;
        _timer = Time.time;
    }

    // Update is called once per frame
    void Update()
    {
        if(Time.time - _timer > _cooldown)
        {
            Generate();
        }
    }

    void Generate()
    {
        GameObject obstacle = _obstacles[Random.Range(0, _obstacles.Length)];
        Instantiate(obstacle, new Vector3(transform.position.x, Random.Range(_botLimit, _topLimit), 0), Quaternion.identity);
        _cooldown = Random.Range(1, 3);
        _timer = Time.time;
    }
}
