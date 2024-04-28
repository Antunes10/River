using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimSpeed : MonoBehaviour
{
    Animator anim;
    [SerializeField] public float _speed = 0.5f;

    void Start()
    {
        anim = GetComponent<Animator>();
        ChangeAnimationSpeed(_speed);
    }

    void ChangeAnimationSpeed(float speed)
    {
        anim.speed = speed;
    }
}
