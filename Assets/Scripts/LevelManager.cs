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

    private bool _rain;
    private float _rainInterval;
    private float _levelLength;
    private float _timer;

    public event Action StartRain;
    public event Action EndRain;
    // Start is called before the first frame update
    void Start()
    {   
        //DontDestroyOnLoad(this.gameObject);
        _levelData = GameManager.Instance._actualLevel;

        _timer = Time.time;
        Initialize();
        if (_rain)
        {
            InvokeRepeating("Raining", _rainInterval, _rainInterval);
        }
        
    }

    // Update is called once per frame
    void Update()
    {
        _progressSlider.value = Time.time;

        if (Time.time - _timer > _levelLength)
        {
            WinGame();
        }
    }

    void Initialize()
    {
        _levelData = GameManager.Instance._actualLevel;

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
        yield return new WaitForSeconds(UnityEngine.Random.Range(3, 6));
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
