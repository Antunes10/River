using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System;

public class LevelManager : MonoBehaviour
{
    [SerializeField] private GameObject _loseScreen;
    [SerializeField] private Level _levelData;
    [SerializeField] private ObstacleGenerator _generator;
    [SerializeField] private GameObject _rainSprite;

    private bool _rain;
    private float _rainInterval;
    private float _levelLength;
    private float _timer;

    public event Action StartRain;
    public event Action EndRain;
    // Start is called before the first frame update
    void Start()
    {
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
        if(Time.time - _timer > _levelLength)
        {
            WinGame();
        }
    }

    void Initialize()
    {
        _generator.SetObstacleList(_levelData.obstacleList);
        _rain = _levelData.rain;
        _rainInterval = _levelData.rainInterval;
        _levelLength = _levelData.levelLength;
    }

    public void LoseGame()
    {
        _loseScreen.SetActive(true);
    }

    public void WinGame()
    {
        Debug.Log("Win");
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
        yield return new WaitForSeconds(5);
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
