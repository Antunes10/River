using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System;
using UnityEngine.UI;

public class LevelManager : MonoBehaviour
{
    [SerializeField] private GameObject _loseScreen;
    [SerializeField] private Level _levelData;
    [SerializeField] private ObstacleGenerator _generator;
    [SerializeField] private GameObject _rainSprite;
    [SerializeField] private Slider _progressSlider;
    [SerializeField] private Canvas _inGameCanvas;
    [SerializeField] private Canvas _pauseMenuCanvas;

    private bool _gamePaused;

    private bool _rain;
    private float _rainInterval;
    private float _levelLength;

    public event Action StartRain;
    public event Action EndRain;
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

        if (Time.timeSinceLevelLoad > _levelLength)
        {
            WinGame();
        }
    }

    void Initialize()
    {
        _levelData = GameManager.Instance._currentLevel;

        //Instanciate Backgrounds
        Instantiate(_levelData.backgrounds);

        //Initialize Obstacle Generator
        _generator.SetObstacleList(_levelData.obstacleList);
        _generator.minObsCooldown = _levelData.min;
        _generator.maxObsCooldown = _levelData.max;

        //Initialize Level Variables
        _rain = _levelData.rain;
        _rainInterval = _levelData.rainInterval;
        _levelLength = _levelData.levelLength;

        //Set Progress Slider Max
        _progressSlider.maxValue = _levelData.levelLength;

        _gamePaused = false;
    }

    public void PauseUnpause()
    {
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

    public void ExitToMenu()
    {
        Time.timeScale = 1;
        GameManager.Instance.changeToMenuScene();
    }

    public void LoseGame()
    {
        _loseScreen.SetActive(true);
    }

    public void WinGame()
    {
        Debug.Log("Win River Minigame");
        GameManager.Instance.changeToDialogueScene();
    }

    public void ReloadLevel()
    {
        Time.timeScale = 1;
        Scene scene = SceneManager.GetActiveScene();
        SceneManager.LoadScene(scene.name);
    }

    void Raining()
    {
        StartCoroutine(Rain());
    }

    IEnumerator Rain()
    {
        StartRain?.Invoke();
        _rainSprite.SetActive(true);
        yield return new WaitForSeconds(UnityEngine.Random.Range(5, 8));
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
