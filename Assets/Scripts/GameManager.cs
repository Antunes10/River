using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    // Start is called before the first frame update
    public bool _hasNimbus;
    public bool _hasOak;
    public bool _hasCotton;

    public Level[] _levels;
    public Level _currentLevel;

    public TextAsset[] _inkJSONs;
    public TextAsset _currentInk;

    private int _currentLevelIndex;
    private int _currentInkIndex;

    void Start()
    {
        DontDestroyOnLoad(this.gameObject);
        _currentLevelIndex = -1;
        _currentInkIndex = -1;
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void changeToRiverScene() {
        _currentLevelIndex++;
        _currentLevel = _levels[_currentLevelIndex];
        SceneManager.LoadScene("RiverScene");
    }

    public void changeToDialogueScene() {
        _currentInkIndex++;
        _currentInk = _inkJSONs[_currentInkIndex];
        SceneManager.LoadScene("IntroScene");
    }

    #region Singleton
    private static GameManager _instance;
    public static GameManager Instance
    {
        get
        {
            if (_instance == null) _instance = FindObjectOfType<GameManager>();
            return _instance;
        }
    }
    #endregion

}
