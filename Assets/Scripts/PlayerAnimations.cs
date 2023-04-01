using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerAnimations : MonoBehaviour
{
    // Start is called before the first frame update
    [Header("Animal Sprites")]
    [SerializeField] private SpriteRenderer[] _animalsSprites;

    public Animator _animController;

    private bool _hasNimbus;
    private bool _hasOak;
    private bool _hasCotton;

    private GameManager _gameManager;
    void Start()
    {
        _gameManager = GameManager.Instance;
        _hasNimbus = _gameManager._hasNimbus;
        _hasOak = _gameManager._hasOak;
        _hasCotton = _gameManager._hasCotton;


        if (!_hasNimbus) 
        {
            _animalsSprites[2].enabled = false;
        }
        if (!_hasOak)
        {
            _animalsSprites[3].enabled = false;
        }
        if (!_hasCotton)
        {
            _animalsSprites[4].enabled = false;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
