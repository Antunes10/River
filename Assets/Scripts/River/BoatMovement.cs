using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatMovement : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] float _speed;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void FixedUpdate()
    {
        gameObject.transform.position = new Vector2(transform.position.x + _speed, transform.position.y);
    }
}
