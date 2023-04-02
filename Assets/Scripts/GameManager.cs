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

    public DialogueGrid[] _inkJSONs;
    public TextAsset _currentInk;

    private int _currentLevelIndex;
    private int _currentInkIndex;
    private int _dialogueIndex;

    private int _currentFood;
    private int _currentHope;

    void Start()
    {
        DontDestroyOnLoad(this.gameObject);
        /*_hasCotton = false;
        _hasNimbus = false;
        _hasOak = false;*/
        _currentLevelIndex = -1;
        _currentInkIndex = -1;
        _dialogueIndex = 0;
        _currentFood = 3;
        _currentHope = 3;
    }

    // Update is called once per frame
    void Update()
    {

    }

    public int getFood() { return _currentFood; }
    public int getHope() { return _currentHope; }

    public void increaseFood(int val) { _currentFood = _currentFood + val; }
    public void increaseHope(int val) { _currentHope = _currentHope + val; }
    public void decreaseFood(int val) { _currentFood = _currentFood - val; }
    public void decreaseHope(int val) { _currentHope = _currentHope - val; }

    public void recruitNimbus() {_hasNimbus = true; }
    public void recruitOak() { _hasOak = true; }
    public void recruitCotton() { _hasCotton = true; }

    public void gameOver() {
        Debug.Log("Game Over");
    }

    public void changeToFinishDay() {
        // -1 food at the end of every day
        decreaseFood(1);

        if (_currentFood <= 0) {
            gameOver();
        }

        SceneManager.LoadScene("FinishDayScene");
    }

    public void changeToRiverScene() {
        _currentLevelIndex++;
        _currentLevel = _levels[_currentLevelIndex];
        SceneManager.LoadScene("RiverScene");
    }

    public void changeToDialogueScene() {
         
        //Changing to Bridge Aftermath Scene OR Oak Scene
        if (_currentInkIndex == 2 || _currentInkIndex == 3) {     
            if (_hasNimbus) { _dialogueIndex = 1; }
            else { _dialogueIndex = 0; }
        }
        //Changing to Oak Aftermath Scene OR Hazel Scene OR Crow Scene
        else if (_currentInkIndex == 4 || _currentInkIndex == 5 || _currentInkIndex == 6) {   
            if (!_hasNimbus && !_hasOak) {_dialogueIndex = 0; }
            else if (!_hasNimbus && _hasOak) { _dialogueIndex = 1; }
            else if (_hasNimbus && !_hasOak) { _dialogueIndex = 2; }
            else if (_hasNimbus && _hasOak) { _dialogueIndex = 3; }
        }
            
        _currentInkIndex++;
        _currentInk = _inkJSONs[_currentInkIndex]._InkJSONs[_dialogueIndex];
        SceneManager.LoadScene("DialogueScene");
    }

    [System.Serializable]
    public class DialogueGrid {
        public TextAsset[] _InkJSONs;
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
