using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    private float _horizontalM;
    private float _verticalM;
    [SerializeField] private float _speed;

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        var input = Input.inputString;

        switch (input)
        {
            case "W":
                break;
        }
    }

    private void FixedUpdate()
    {
        _horizontalM = Input.GetAxisRaw("Horizontal") * _speed;
        _verticalM = Input.GetAxisRaw("Vertical") * _speed;

        transform.position = new Vector2(transform.position.x + _horizontalM, transform.position.y + _verticalM);
    }
}
