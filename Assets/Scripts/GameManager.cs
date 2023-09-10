using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using static UnityEngine.JsonUtility;
using System.IO;
using System;

public class GameManager : MonoBehaviour
{

  //River  Level Variables
  public Level[] _levels;
  public Level _currentLevel;

  //INK variables
  public DialogueGrid[] _inkJSONs;
  public TextAsset _currentInk;

  //Game State
  private GameState _gs;

  public string savedJson;

  #region Getters and Setters
  public bool GetHasSparks()
  {
    return _gs.hasSparks;
  }

  public bool GetHasNimbus()
  {
    return _gs.hasNimbus;
  }

  public bool GetHasOak()
  {
    return _gs.hasOak;
  }

  public bool GetHasCotton()
  {
    return _gs.hasCotton;
  }

  public int getFood() { return _gs.currentFood; }
  public int getHope() { return _gs.currentHope; }

  public void increaseFood(int val) { _gs.currentFood += val; }
  public void increaseHope(int val) { _gs.currentHope += val; }
  public void decreaseFood(int val) { _gs.currentFood -= val; }
  public void decreaseHope(int val) { _gs.currentHope -= val; }

  public void recruitSparks() { _gs.hasSparks = true; }
  public void recruitNimbus() { _gs.hasNimbus = true; }
  public void recruitOak() { _gs.hasOak = true; }
  public void recruitCotton() { _gs.hasCotton = true; }
  #endregion

  private void Awake()
  {
    if (Instance != this)
    {
      Destroy(gameObject);
    }
  }

  void Start()
  {
    DontDestroyOnLoad(this.gameObject);
    _gs = new GameState();
    _gs.currentLevelIndex = -1;
    _gs.currentInkIndex = -1;
    _gs.dialogueIndex = 0;
    _gs.currentFood = 3;
    _gs.currentHope = 3;
  }

  public void gameOver()
  {
    Debug.Log("Game Over");
  }

  #region SaveSystem
  public void LoadGame(int number)
  {
    Time.timeScale = 1f;
    StreamReader sr = new StreamReader(Application.dataPath + "/Resources/RiverSave" + number + ".json");
    string json = sr.ReadToEnd();
    sr.Close();
    _gs = FromJson<GameState>(json);

    changeToDialogueScene();
  }

  public void SaveGame(int number)
  {
    Debug.Log("Saving Game");
    _gs.date = DateTime.Now.ToString();
    string json = ToJson(_gs, true);
    StreamWriter sw = new StreamWriter(Application.dataPath + "/Resources/RiverSave" + number + ".json");
    sw.Write(json);
    sw.Close();
  }
  #endregion

  #region Change Scenes

  public void changeToEndDayScene()
  {
    // -1 food at the end of every day
    decreaseFood(1);

    if (_gs.currentFood <= 0)
    {
      gameOver();
    }

    SceneManager.LoadScene("FinishDayScene");
  }

  public void changeToRiverScene()
  {
    _gs.currentLevelIndex++;
    _currentLevel = _levels[_gs.currentLevelIndex];
    SceneManager.LoadScene("RiverScene");
  }

  public void startDialogue()
  {
    _gs.currentInkIndex = 0;
    _gs.dialogueIndex = 0;
    _currentInk = _inkJSONs[_gs.currentInkIndex]._InkJSONs[_gs.dialogueIndex];
    AudioManager.Instance.switchPrologue = false;
    SceneManager.LoadScene("DialogueScene");
  }

  public void changeToDialogueScene()
  {
    //Changing to Bridge Aftermath Scene OR Oak Scene
    if (_gs.currentInkIndex == 2 || _gs.currentInkIndex == 3)
    {
      if (_gs.hasNimbus) { _gs.dialogueIndex = 1; }
      else { _gs.dialogueIndex = 0; }
    }
    //Changing to Oak Aftermath Scene OR Hazel Scene OR Crow Scene
    else if (_gs.currentInkIndex == 4 || _gs.currentInkIndex == 5 || _gs.currentInkIndex == 6)
    {
      if (!_gs.hasNimbus && !_gs.hasOak) { _gs.dialogueIndex = 0; }
      else if (!_gs.hasNimbus && _gs.hasOak) { _gs.dialogueIndex = 1; }
      else if (_gs.hasNimbus && !_gs.hasOak) { _gs.dialogueIndex = 2; }
      else if (_gs.hasNimbus && _gs.hasOak) { _gs.dialogueIndex = 3; }
    }

    _gs.currentInkIndex++;
    _currentInk = _inkJSONs[_gs.currentInkIndex]._InkJSONs[_gs.dialogueIndex];
    SceneManager.LoadScene("DialogueScene");
  }

  public void changeToMenuScene()
  {
    Time.timeScale = 1f;
    SceneManager.LoadScene("Menu");
    AudioManager.Instance.PlayMenuMusic();
  }

  public void changeToUnlockablesScene()
  {
    SceneManager.LoadScene("Unlockables");
  }

  #endregion

  public void Exit()
  {
    Application.Quit();
  }

  [System.Serializable]
  public class DialogueGrid
  {
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

public class GameState
{
  //Characters
  public bool hasSparks;
  public bool hasNimbus;
  public bool hasOak;
  public bool hasCotton;

  //Resources
  public int currentFood;
  public int currentHope;

  //Scene variables
  public int currentLevelIndex;
  public int currentInkIndex;
  public int dialogueIndex;

  //Save data variables
  public String date;
}
