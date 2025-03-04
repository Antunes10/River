using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerAnimations : MonoBehaviour
{
    // Start is called before the first frame update
    [Header("Sprites")]
    [SerializeField] private SpriteRenderer[] _animalsSprites;
    

    public Animator _animController;
    public Animator _helmetController;
    public SpriteRenderer _helmetSpriteRenderer;

    private bool _hasNimbus;
    private bool _hasOak;
    private bool _hasCotton;
    private bool _hasSparks;

    private bool _hit;

    private GameManager _gameManager;
    void Start()
    {
        _gameManager = GameManager.Instance;
        _hasSparks = _gameManager._gs.hasSparks;
        _hasNimbus = _gameManager._gs.hasNimbus;
        _hasOak = _gameManager._gs.hasOak;
        _hasCotton = _gameManager._gs.hasCotton;

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
        if (_hit)
        {
            _helmetSpriteRenderer.color = new Color(1f, 1f, 1f, Mathf.PingPong(Time.time * 5, 1));
            foreach(SpriteRenderer sr in _animalsSprites)
            {
                sr.color = new Color(1f, 1f, 1f, Mathf.PingPong(Time.time * 5, 1));
            }
        }
    }

    public void ChangeHelmetSprite(int val)
    {
        _helmetController.SetInteger("Moving", val);
    }

    public void Getwater(bool state)
    {
        _animController.SetBool("GettingWater", state);
        _helmetController.SetBool("GettingWater", state);
    }

    public void UsePower(string animal, bool usage)
    {
        _animController.SetBool(animal, usage);
    }

    public void Stunned(string obstacle, bool state)
    {
        _animController.SetBool("Stunned", state);
        _helmetController.SetBool(obstacle, state);
    }

    public enum Helmet
    {
        idle = 0,
        bot = 1,
        right = 2,
        left = 3

    }

    public void HelmetHit()
    {
        StartCoroutine(Hit());
    }

    IEnumerator Hit()
    {
        _hit = true;
        yield return new WaitForSeconds(2f);

        _hit = false;

        //Rep�e a transparencia a zero
        _helmetSpriteRenderer.color = new Color(1f, 1f, 1f, 1f);
        foreach (SpriteRenderer sr in _animalsSprites)
        {
            sr.color = new Color(1f, 1f, 1f, 1f);
        }

        //Volta a meter a variavel de invulneravel a falso
        GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerController>()._invulnerable = false;
    }
}
