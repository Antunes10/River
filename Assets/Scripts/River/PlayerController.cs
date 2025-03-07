using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour
{
    //Variables to check unlocked animals
    [SerializeField] private bool _hasNimbus;
    [SerializeField] private bool _hasOak;
    [SerializeField] private bool _hasCotton;
    [SerializeField] private bool _hasSparks;
    private int numbAnimals = 0;

    [SerializeField] private SpriteRenderer _indicator;
    [SerializeField] private Sprite[] _indicatorImages;
    [SerializeField] private BoxCollider2D _nimbusCollider;


    public HelmetState _helmetState;
    private bool _isRaining;

    [SerializeField] private float _speed;
    [SerializeField] private Slider _slider;
    private float _horizontalM;
    private float _verticalM;

    private GameManager _gameManager;
    private LevelManager _levelManager;
    public PlayerAnimations _playeranimations;

    public bool _invulnerable;
    private bool _victory;

    void Start()
    {
        _levelManager = LevelManager.Instance;
        _gameManager = GameManager.Instance;
        _levelManager.StartRain += IsRaining;
        _levelManager.EndRain += StopRaining;
        _levelManager.Victory += Victory;
        _helmetState = HelmetState.normal;

		//Assign character checks
		_hasSparks = _gameManager._gs.hasSparks;
		_hasNimbus = _gameManager._gs.hasNimbus;
		_hasOak = _gameManager._gs.hasOak;
        _hasCotton = _gameManager._gs.hasCotton;

        //define speed
        if (_hasSparks) { numbAnimals++; };
		if (_hasNimbus) { numbAnimals++; };
		if (_hasOak) { numbAnimals++; };
		if (_hasCotton) { numbAnimals++; };
        _speed -= numbAnimals * 0.2f;

	}

    // Update is called once per frame
    void Update()
    {
        
        //Move Helmet
        _horizontalM = Input.GetAxisRaw("Horizontal") * _speed;
        _verticalM = Input.GetAxisRaw("Vertical") * _speed;

        if (!_helmetState.Equals(HelmetState.stunned) && !_helmetState.Equals(HelmetState.water))
        {

            //Change Helmet Sprite
            if(_horizontalM > 0)
            {
                _playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.right);
                _horizontalM += 2;
            }
            else if(_horizontalM < 0)
            {
                _playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.left);
                _horizontalM = _horizontalM / _speed;
            }
            else if (_verticalM < 0)
            {
                _playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.bot);
            }
            else
            {
                _playeranimations._helmetController.SetInteger("Moving", 0);
            }

            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(_horizontalM, _verticalM);
        }


        //Get Water out of the Helmet
        if (Input.GetKeyDown(KeyCode.E) && _helmetState.Equals(HelmetState.normal))
        {
            TakeOutWater();
        }

        //Open Dog Hat
        if (Input.GetKeyDown(KeyCode.R) && _hasOak && _helmetState.Equals(HelmetState.normal))
        {
            UseOak();
        }
        else if(Input.GetKeyUp(KeyCode.R) && _hasOak && _helmetState.Equals(HelmetState.oak))
        {
            StopUseOak();
        }

        //Get Bird Beak on Front
        if (Input.GetKeyDown(KeyCode.Space) && _hasNimbus && _helmetState.Equals(HelmetState.normal))
        {
            UseNimbus();
        }
        else if (Input.GetKeyUp(KeyCode.Space) && _hasNimbus && _helmetState.Equals(HelmetState.nimbus))
        {
            StopUseNimbus();
        }
    }

    private void FixedUpdate()
    {
		//Rise water level if its raining
		if (_isRaining && !_helmetState.Equals(HelmetState.oak) && !_victory && !_levelManager.GetPaused())
		{
			_slider.value += 0.08f;
			if (_slider.value > 99)
			{
				LevelManager.Instance.LoseGame();
			}
		}
		if (_victory)
        {
            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
            transform.Translate(Vector3.right * Time.deltaTime * 5, Camera.main.transform);
        }
    }

    public void TakeOutWater()
    {
        gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
        _slider.value -= 10;
        if (_hasCotton)
        {
            _slider.value -= 20;
        }
        StartCoroutine(GetWater());
    }

    public void HitRock(float amount)
    {
        /*====================================
        Gives invulnerability to the player
        Triggers the Blink Animation
        Add water to the water slider
        Checks if the player lost the game
        ====================================*/
        
        _invulnerable = true;
        _playeranimations.HelmetHit();
        _slider.value += amount;
        if (_slider.value > 99)
        {
            LevelManager.Instance.LoseGame();
        }
    }

    public void HitBarbed(bool wire)
    {
        if (!_helmetState.Equals(HelmetState.stunned))
        {
            gameObject.GetComponent<Rigidbody2D>().velocity = new Vector2(0, 0);
            _playeranimations._animController.SetBool("Oak", false);
            _playeranimations._animController.SetBool("Nimbus", false);
            StartCoroutine(GetStunned(wire));
        }
        
    }

    void IsRaining()
    {
        _isRaining = true;
    }

    void StopRaining()
    {
        _isRaining = false;
    }

    void UseOak()
    {
        _helmetState = HelmetState.oak;
        _playeranimations.UsePower("Oak", true);
    }

    void StopUseOak()
    {
        _helmetState = HelmetState.normal;
        _playeranimations.UsePower("Oak", false);
    }

    void UseNimbus()
    {
        _nimbusCollider.enabled = true;
        _helmetState = HelmetState.nimbus;
        _playeranimations.UsePower("Nimbus", true);
    }

    void StopUseNimbus()
    {
        _nimbusCollider.enabled = false;
        _helmetState = HelmetState.normal;
        _playeranimations.UsePower("Nimbus", false);
    }

    void Victory()
    {
        /*=================================================================================
        changes to stunned so the player can't control the helmet
        Disables collider to avoid triggers
        Validates the victory bool so the FixedUpdate can apply Translation to the helmet
        Triggers the right animation because the helmet will move right
        =================================================================================*/

        _helmetState = HelmetState.stunned;
        _victory = true;
        gameObject.GetComponent<Collider2D>().enabled = false;
        //_playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.right);
    }

    IEnumerator GetStunned(bool wire)
    {

        _helmetState = HelmetState.stunned;
        if(wire) 
        {
            _playeranimations.Stunned("Stunned_Wire", true);
            yield return new WaitForSeconds(3);
            _playeranimations.Stunned("Stunned_Wire", false);
        }
        else
        {
            _playeranimations.Stunned("Stunned_Fabric", true);
            yield return new WaitForSeconds(3);
            _playeranimations.Stunned("Stunned_Fabric", false);
        }
        _helmetState = HelmetState.normal;
    }

    IEnumerator GetWater()
    {
        //_playeranimations.ChangeHelmetSprite((int)PlayerAnimations.Helmet.idle);
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.pouringWaterOut);
        _helmetState = HelmetState.water;
        _playeranimations.Getwater(true);
        yield return new WaitForSeconds(3);
        _playeranimations.Getwater(false);
        if (_helmetState.Equals(HelmetState.water))
        {
            _helmetState = HelmetState.normal;
        }
    }

    public enum HelmetState
    {
        normal = 0,
        stunned = 1,
        water = 2,
        nimbus = 3,
        oak = 4

    }
    
}
