using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerAnimations : MonoBehaviour
{
    // Start is called before the first frame update
    [Header("Sprites")]
    [SerializeField] private SpriteRenderer[] _animalsSprites;
    [SerializeField] private Sprite[] _helmetSprites;
    

    public Animator _animController;
    private SpriteRenderer _helmetSpriteRenderer;

    private bool _hasNimbus;
    private bool _hasOak;
    private bool _hasCotton;
    private bool _hasSparks;

    private GameManager _gameManager;
    void Start()
    {
        _gameManager = GameManager.Instance;
        _hasSparks = _gameManager._hasSparks;
        _hasNimbus = _gameManager._hasNimbus;
        _hasOak = _gameManager._hasOak;
        _hasCotton = _gameManager._hasCotton;
        _helmetSpriteRenderer = GetComponent<SpriteRenderer>();

        if (!_hasSparks)
        {
            _animalsSprites[1].enabled = false;
        }
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

    public void ChangeHelmetSprite(int val)
    {
        _helmetSpriteRenderer.sprite = _helmetSprites[val];
    }

    public enum Helmet
    {
        idle = 0,
        bot = 1,
        right = 2,
        left = 3

    }
}
