using System;
using System.IO;
using UnityEngine;
using UnityEngine.SceneManagement;
using static UnityEngine.JsonUtility;

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

  // int array 
  public int[] unlockedImages = new int[20];

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

    InitGameState();
  }

  public void InitGameState()
  {
    _gs = new GameState();
    _gs.currentLevelIndex = -1;
    _gs.currentInkIndex = -1;
    _gs.dialogueIndex = 0;
    _gs.currentFood = 3;
    _gs.currentHope = 3;
  }

  public void UnlockImage(int n)
  {
    unlockedImages[n] = 1;
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

    loadDialogueScene();
  }

  public void SaveGame(int number)
  {
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

  public void loadDialogueScene()
  {
    if (_gs.currentInkIndex == 3 || _gs.currentInkIndex == 4)
    {
      if (_gs.hasNimbus) { _gs.dialogueIndex = 1; }
      else { _gs.dialogueIndex = 0; }
    }
    //Changing to Oak Aftermath Scene OR Hazel Scene OR Crow Scene
    else if (_gs.currentInkIndex == 5 || _gs.currentInkIndex == 6 || _gs.currentInkIndex == 7 || _gs.currentInkIndex == 8 || _gs.currentInkIndex == 9 || _gs.currentInkIndex == 10)
    {
      if (!_gs.hasNimbus && !_gs.hasOak) { _gs.dialogueIndex = 0; }
      else if (!_gs.hasNimbus && _gs.hasOak) { _gs.dialogueIndex = 1; }
      else if (_gs.hasNimbus && !_gs.hasOak) { _gs.dialogueIndex = 2; }
      else if (_gs.hasNimbus && _gs.hasOak) { _gs.dialogueIndex = 3; }
    }

    _currentInk = _inkJSONs[_gs.currentInkIndex]._InkJSONs[_gs.dialogueIndex];
    SceneManager.LoadScene("DialogueScene");
  }

  public void changeToNextDialogueScene()
  {
    _gs.currentInkIndex++;
    //Changing to Bridge Aftermath Scene OR Oak Scene
    if (_gs.currentInkIndex == 3 || _gs.currentInkIndex == 4)
    {
      Debug.Log("Coisas");
      if (_gs.hasNimbus) { _gs.dialogueIndex = 1; }
      else { _gs.dialogueIndex = 0; }
    }
    //Changing to Oak Aftermath Scene OR Hazel Scene OR Crow Scene
    else if (_gs.currentInkIndex == 5 || _gs.currentInkIndex == 6 || _gs.currentInkIndex == 7 || _gs.currentInkIndex == 8 || _gs.currentInkIndex == 9 || _gs.currentInkIndex == 10)
    {
      if (!_gs.hasNimbus && !_gs.hasOak) { _gs.dialogueIndex = 0; }
      else if (!_gs.hasNimbus && _gs.hasOak) { _gs.dialogueIndex = 1; }
      else if (_gs.hasNimbus && !_gs.hasOak) { _gs.dialogueIndex = 2; }
      else if (_gs.hasNimbus && _gs.hasOak) { _gs.dialogueIndex = 3; }
    }

    _currentInk = _inkJSONs[_gs.currentInkIndex]._InkJSONs[_gs.dialogueIndex];
    SceneManager.LoadScene("DialogueScene");
  }

  public void changeToMenuScene()
  {
    InitGameState();
    SceneManager.LoadScene("Menu");
    AudioManager.Instance.PlayMenuMusic();
  }

  public void changeToUnlockablesScene()
  {
    SceneManager.LoadScene("Unlockables");
  }

  public void changeToCreditsScene()
  {
    InitGameState();
    SceneManager.LoadScene("Credits");
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