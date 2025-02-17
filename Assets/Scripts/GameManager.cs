using Ink.Parsed;
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
	public GameState _gs { get; private set; }

	// int array 
	public int[] unlockedImages = new int[20];

	#region Setters

	public void changeFood(int val) { _gs.currentFood += val; Debug.Log(_gs.currentFood); }
	public void changeHope(int val) { _gs.currentHope += val; Debug.Log(_gs.currentHope); }

	public void recruitSparks() { _gs.hasSparks = true; }
	public void recruitNimbus() { _gs.hasNimbus = true; }
	public void recruitOak() { _gs.hasOak = true; }
	public void recruitCotton() { _gs.hasCotton = true; }
	public void foundOldMan() { _gs.FoundOldMan = true; }
	public void killedNimbus() { _gs.KilledNimbus = true; }
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

		for (int i = 0; i < unlockedImages.Length; i++)
		{
			unlockedImages[i] = 0;
		}

		InitGameState();

		if (System.IO.File.Exists(Application.persistentDataPath + "/UnlockedImages.json"))
		{
			LoadUnlockables();
		}
	}

  public void InitGameState()
  {
	_gs = new GameState();
	_gs.currentLevelIndex = -1;
	_gs.currentInkIndex = -1;
	_gs.dialogueIndex = 0;
	_gs.currentFood = 3;
	_gs.currentHope = 3;
	_gs.gameOver = false;
  }

  public void UnlockImage(int n)
  {
	unlockedImages[n] = 1;
	SaveUnlockables();
  }

  public void gameOver()
  {
	_gs.gameOver = true;
	SceneManager.LoadScene("FinishDayScene");
  }

  #region SaveSystem
  public void LoadGame(int number, string saveMode)
  {
	Time.timeScale = 1f;
	StreamReader sr = new StreamReader(Application.persistentDataPath + saveMode + number + ".json");
	string json = sr.ReadToEnd();
	sr.Close();
	_gs = FromJson<GameState>(json);

	loadDialogueScene();
  }

  public void SaveGame(int number)
  {
	_gs.date = DateTime.Now.ToString();
	string json = ToJson(_gs, true);
	StreamWriter sw = new StreamWriter(Application.persistentDataPath + "/RiverSave" + number + ".json");
	sw.Write(json);
	sw.Close();
  }

  public void AutoSaveGame()
  {
		var chosenDate = DateTime.Parse("3050/04/01 17:09:10");
		int chosenIterator = 0;
		for (int iterator = 0; iterator < 3; iterator++)
		{
			if (System.IO.File.Exists(Application.persistentDataPath + "/RiverAutoSave" + iterator + ".json"))
			{
				StreamReader sr = new StreamReader(Application.persistentDataPath + "/RiverAutoSave" + iterator + ".json");
				string json = sr.ReadToEnd();
				sr.Close();
				GameState gm = FromJson<GameState>(json);

				if(DateTime.Parse(gm.date) < chosenDate)
				{
					chosenIterator = iterator;
					chosenDate = DateTime.Parse(gm.date);
				}
			}
			else
			{
				chosenIterator = iterator;
				break;
			}
		}

	_gs.date = DateTime.Now.ToString();
	string json2 = ToJson(_gs, true);
	StreamWriter sw = new StreamWriter(Application.persistentDataPath + "/RiverAutoSave" + chosenIterator + ".json");
	sw.Write(json2);
	sw.Close();
  }

  public void LoadUnlockables() {
	StreamReader sr2 = new StreamReader(Application.persistentDataPath + "/UnlockedImages.json");
	string json2 = sr2.ReadToEnd();
	sr2.Close();
	unlockedImages = JsonHelper.FromJson<int>(json2);

	Debug.Log(json2);
  }

  public void SaveUnlockables()
  {
	string json = JsonHelper.ToJson(unlockedImages);
	StreamWriter sw = new StreamWriter(Application.persistentDataPath + "/UnlockedImages.json");
	sw.Write(json);
	sw.Close();
  }
  #endregion

  #region Change Scenes

	public void changeToEndDayScene()
	{
		AudioManager.Instance.StopAllSounds();
		// -1 food at the end of every day
		changeFood(-1);
		_gs.day += 1;

	if (_gs.currentFood <= 0 || _gs.currentHope <= 0)
	{
	  gameOver();
			return;
	} 

	SceneManager.LoadScene("FinishDayScene");
	}

  public void changeToRiverScene()
  {
	AudioManager.Instance.StopAllSounds();
	_gs.currentLevelIndex++;
	_currentLevel = _levels[_gs.currentLevelIndex];
	SceneManager.LoadScene("RiverScene");
  }

  public void loadDialogueScene()
  {
	AudioManager.Instance.StopAllSounds();
	if (_gs.currentInkIndex == 3 || _gs.currentInkIndex == 4)
	{
	  if (_gs.hasNimbus) { _gs.dialogueIndex = 1; }
	  else { _gs.dialogueIndex = 0; }
	}
	//Changing to Oak Aftermath Scene OR Hazel Scene OR Crow Scene
	else if (_gs.currentInkIndex == 5 || _gs.currentInkIndex == 6 || _gs.currentInkIndex == 7 || _gs.currentInkIndex == 8 || _gs.currentInkIndex == 9 || _gs.currentInkIndex == 10)
	{
	  if (!_gs.hasNimbus && !_gs.hasOak) { _gs.dialogueIndex = 0; }
	  else if (_gs.hasNimbus && !_gs.hasOak) { _gs.dialogueIndex = 1; }
	  else if (!_gs.hasNimbus && _gs.hasOak) { _gs.dialogueIndex = 2; }
	  else if (_gs.hasNimbus && _gs.hasOak) { _gs.dialogueIndex = 3; }
	}

	_currentInk = _inkJSONs[_gs.currentInkIndex]._InkJSONs[_gs.dialogueIndex];
	SceneManager.LoadScene("DialogueScene");
  }

  public void changeToNextDialogueScene()
  {
	AudioManager.Instance.StopAllSounds();
	_gs.currentInkIndex++;
	//Changing to Bridge Aftermath Scene OR Oak Scene
	if (_gs.currentInkIndex == 4 || _gs.currentInkIndex == 5)
	{
	  if (_gs.hasNimbus) { _gs.dialogueIndex = 1; }
	  else { _gs.dialogueIndex = 0; }
	}
	//Changing to Oak Aftermath Scene OR Hazel Scene OR Crow Scene
	else if (_gs.currentInkIndex == 6 || _gs.currentInkIndex == 7 || _gs.currentInkIndex == 8 || _gs.currentInkIndex == 9 || _gs.currentInkIndex == 10 || _gs.currentInkIndex == 11)
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
	AudioManager.Instance.StopAllSounds();
	AudioManager.Instance.PlayMenuMusic();
  }

  public void changeToUnlockablesScene()
  {
	SceneManager.LoadScene("Unlockables");
  }

  public void changeToCreditsScene()
  {
	InitGameState();
	AudioManager.Instance.StopAllSounds();
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

	//Decisions
	public bool NimbusSaved;
	public bool OakSaved;
	public bool CottonSaved;
	public bool FoundOldMan;
	public bool KilledNimbus;

	//Resources
	public int day;
	public int currentFood;
	public int currentHope;

	//Scene variables
	public int currentLevelIndex;
	public int currentInkIndex;
	public int dialogueIndex;

	//Save data variables
	public String date;

	public bool gameOver;
}
