using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System;
using UnityEngine.UI;
using TMPro;
using Unity.VisualScripting;

public class LevelManager : MonoBehaviour
{
    [SerializeField] private GameObject _loseScreen;
    [SerializeField] private Level _levelData;
    [SerializeField] private ObstacleGenerator _generator;
    [SerializeField] private GameObject _rainSprite;
    [SerializeField] private Slider _progressSlider;
	[SerializeField] private TextMeshProUGUI _appleCounter;
	[SerializeField] private Canvas _inGameCanvas;
    [SerializeField] private Canvas _pauseMenuCanvas;
    [SerializeField] private Tutorial _tutorial;

	private GameManager _gameManager;

    public bool inTutorial;
    private bool _gamePaused;
    public bool _gameLost;
    private bool _alreadyVic;

    private bool _rain;
    private float _rainInterval;
    private float _levelLength;
    private int _foodCollected;

    public event Action StartRain;
    public event Action EndRain;
    public event Action Victory;
    // Start is called before the first frame update
    void Start()
    {
        Initialize();
        if (_rain)
        {
            InvokeRepeating("Raining", _rainInterval, _rainInterval);
        }
        
    }

    // Update is called once per frame
    void Update()
    {
        _progressSlider.value = Time.timeSinceLevelLoad;

        if (Time.timeSinceLevelLoad > _levelLength && !_alreadyVic)
        {
            Victory?.Invoke();
            StartCoroutine(WinGame());
            _alreadyVic = true;
        }
    }

    void Initialize()
    {
        /*====================================
        Instanciates the Game Manager
        Gets the level data from the Game Manager
        Instanciates the Backgrounds
        Initialize the Obstacle Generator and the level variables
        Sets Progress Slider Max
        ====================================*/

        _gameManager = GameManager.Instance;
        _levelData = _gameManager._currentLevel;
        Instantiate(_levelData.backgrounds);

        _generator.SetObstacleList(_levelData.obstacleList);
        _generator.minObsCooldown = _levelData.minProb;
        _generator.maxObsCooldown = _levelData.maxProb;

        _rain = _levelData.rain;
        _rainInterval = _levelData.rainInterval;
        _levelLength = _levelData.levelLength;

        _progressSlider.maxValue = _levelData.levelLength;
        InitTutorial();
    }

    public void InitTutorial()
    {
        if(_levelData.hasTutorial)
        {
			inTutorial = true;
			PauseUnpause(true);
			_tutorial.Init(_levelData);
			return;
        }
        StartMusic();
    }


	public void StartMusic() {
        _gameManager = GameManager.Instance;
        _levelData = _gameManager._currentLevel;
        AudioManager.Instance.PlayRiverMusic(_levelData.music);
        AudioManager.Instance.PlayEvironmentSound(_levelData.envSounds);
    }

    public string GetLevelName() {
        return _levelData.name;
    }

    public void CollectFood()
    {
        _foodCollected++;
		_appleCounter.text = _foodCollected.ToString();
    }

    public void PauseUnpause()
    {
        /*===========================================
       Changes the pause variable
       Checks if the game is going to pause or resume
       Sets Time Scale
       Enables the right UI or HUD
       ============================================*/

        if (_gameLost)
        {
            return;
        }

        _gamePaused = !_gamePaused;

        if (_gamePaused)
        {
            Time.timeScale = 0;
            _inGameCanvas.enabled = false;
            _pauseMenuCanvas.enabled = true;
        }
        else
        {
            Time.timeScale = 1;
            _inGameCanvas.enabled = true;
            _pauseMenuCanvas.enabled = false;
        }
    }

    public void PauseUnpause(bool force)
    {
        if (force)
        {
			_gamePaused = !_gamePaused;
			Time.timeScale = 0;
			_inGameCanvas.enabled = false;
		}
    }

    public bool GetPaused()
    {
        return _gamePaused;
    }

    public void ExitToMenu()
    {
        AudioManager.Instance.StopAllSounds();
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        Time.timeScale = 1;
        _gameManager.changeToMenuScene();
    }

    public void LoseGame()
    {
        AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.silence);
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.RiverDefeat);
        _gameLost = true;
        _loseScreen.SetActive(true);
    }

    public void ReloadLevel()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        Time.timeScale = 1;
        Scene scene = SceneManager.GetActiveScene();
        SceneManager.LoadScene(scene.name);
    }

    void Raining()
    {
        StartCoroutine(Rain());
    }

    IEnumerator WinGame()
    {
        //Trigger Victory Single
        AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.silence);
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.RiverVictory);

        //Add food collected
        GameManager.Instance.changeFood(_foodCollected);

		yield return new WaitForSeconds(5);

        if(!_levelData.GoesToCampfire) { _gameManager.loadDialogueScene(1); } else { _gameManager.changeToEndDayScene(); }
    }

    IEnumerator Rain()
    {
        StartRain?.Invoke();
        _rainSprite.SetActive(true);
        AudioManager.Instance.PlayRain(true);
        yield return new WaitForSeconds(UnityEngine.Random.Range(5, 8));
        AudioManager.Instance.PlayRain(false);
        _rainSprite.SetActive(false);
        EndRain?.Invoke();
    }

    #region Singleton
    private static LevelManager _instance;
    public static LevelManager Instance
    {
        get
        {
            if (_instance == null) _instance = FindObjectOfType<LevelManager>();
            return _instance;
        }
    }
    #endregion
}
