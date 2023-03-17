using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    // Start is called before the first frame update
    private float _timer;
    void Start()
    {
        _timer = Time.time;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if(Time.time - _timer > 7)
        {
            Destroy(this.gameObject);
        }
    }
}
