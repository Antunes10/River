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

    public float minObsCooldown;
    public float maxObsCooldown;

    void Start()
    {
        _cooldown = minObsCooldown;
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

    public void SetObstacleList(GameObject[] list)
    {
        _obstacles = new GameObject[list.Length];
        list.CopyTo(_obstacles, 0);
    }

    void Generate()
    {
        GameObject obstacle = _obstacles[Random.Range(0, _obstacles.Length)];
        Instantiate(obstacle, new Vector3(transform.position.x, Random.Range(_botLimit, _topLimit), 0), Quaternion.identity);
        _cooldown = Random.Range(minObsCooldown, maxObsCooldown);
        _timer = Time.time;
    }
}
