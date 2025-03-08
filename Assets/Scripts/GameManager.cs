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

	#region Setters&Getters

	public void changeFood(int val) { _gs.currentFood += val; _gs.currentFood = Math.Clamp(_gs.currentFood, 0, 16); }
	public void changeHope(int val) { _gs.currentHope += val; _gs.currentHope = Math.Clamp(_gs.currentHope, 0, 5); }

	public void recruitSparks(bool val) { _gs.hasSparks = val; }
	public void recruitNimbus(bool val) { _gs.hasNimbus = val; if (val) { _gs.NimbusSaved = true; } }
	public void recruitOak(bool val) { _gs.hasOak = val; if (val) { _gs.OakSaved = true; } }
	public void recruitCotton(bool val) { _gs.hasCotton = val; _gs.CottonSaved = true; }
	public void foundOldMan() { _gs.FoundOldMan = true; }
	public void killedNimbus() { _gs.KilledNimbus = true; }
	public bool foundNimbus() { return _gs.wenttoFindNimbus; }
	public bool foundOak() { return _gs.wenttoFindOak; }
	public bool foundFood() { return _gs.wenttoFindFood; }
	public void cityDecision(int val)
	{
		_gs.cityTime++;
		//0 = Food, 1 = Nimbus, 2 = Oak, 3 = Random, 4 = Back, 5 = GaveUp
		_gs.cityDecision = val;
		switch (val){
			case 0:
				_gs.wenttoFindFood = true;
				break;
			case 1:
				_gs.wenttoFindNimbus = true;
				break;
			case 2:
				_gs.wenttoFindOak = true;
				break;
			case 3:
				int randomNum = 0;
				while (randomNum != 0)
				{
					randomNum = UnityEngine.Random.Range(1, 3);
					if(_gs.wenttoFindNimbus == false && randomNum == 1)
					{
						_gs.wenttoFindNimbus = true;
						_gs.cityDecision = 1;
						break;
					}
					else if(_gs.wenttoFindOak == false && randomNum == 2)
					{
						_gs.wenttoFindOak = true;
						_gs.cityDecision = 2;
						break;
					}
					else if(randomNum == 3)
					{
						_gs.cityDecision = 3;
						break;
					}
					else
					{
						continue;
					}
				}
				break;
		}
	}
	public int getCityDecision() { return _gs.cityDecision; }
	public int getCityTime() { return _gs.cityTime; }
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
		_gs.cityDecision = -1;
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
	}

  #region SaveSystem
  public void LoadGame(int number, string saveMode)
  {
	Time.timeScale = 1f;
	StreamReader sr = new StreamReader(Application.persistentDataPath + saveMode + number + ".json");
	string json = sr.ReadToEnd();
	sr.Close();
	_gs = FromJson<GameState>(json);

		loadDialogueScene(0);
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
		// -1 food at the end of every day for each animal
		int TotalAnimals = 1;
		if (_gs.hasSparks) { TotalAnimals++; }
		if (_gs.hasNimbus) { TotalAnimals++; }
		if (_gs.hasOak) { TotalAnimals++; }
		if (_gs.hasCotton) { TotalAnimals++; }

		changeFood(-TotalAnimals);
		_gs.day += 1;

	if (_gs.currentFood <= 0 || _gs.currentHope <= 0)
	{
	  gameOver();
	} 
	SceneManager.LoadScene("FinishDayScene");
	}

	public void changeToRiverScene()
	{
		AudioManager.Instance.StopAllSounds();
		//Assure after 2nd choice of 2nd city day it goes to Sparks Narrative
		if(_gs.currentInkIndex == 14)
		{
			loadDialogueScene(1);
			return;
		}

		_gs.currentLevelIndex++;
		_currentLevel = _levels[_gs.currentLevelIndex];
		SceneManager.LoadScene("RiverScene");
	}

	public void loadDialogueScene(int val)
	{
		//Val = 1 if next scene, = 0 to default load
		AudioManager.Instance.StopAllSounds();
		_gs.currentInkIndex += val;
		if (!_gs.hasNimbus && !_gs.hasOak)
		{
			_gs.dialogueIndex = 0;
		}
		else if(!_gs.hasOak)
		{
			_gs.dialogueIndex = 1;
		}
		else if (!_gs.hasNimbus)
		{
			_gs.dialogueIndex = 2;
		}
		else
		{
			_gs.dialogueIndex = 3;
		}

		//insert the case for Day 2 logic
		if (_gs.currentInkIndex == 13 || _gs.currentInkIndex == 14)
		{
			_gs.dialogueIndex = _gs.cityDecision;
			//After river where the decision was to go back, it goes to sparks chapter
			if (_gs.cityDecision == 4)
			{
				_gs.currentInkIndex = 15;
				_gs.dialogueIndex = 0;
			}
		}
		//After river where the decision was to leave the city, it goes to last chapter
		if (_gs.cityDecision == 5)
		{
			_gs.currentInkIndex = 18;
			_gs.dialogueIndex = 0;
		}

		//TODO: dar fix
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
	public bool wenttoFindNimbus;
	public bool wenttoFindOak;
	public bool wenttoFindFood;
	public int cityDecision;
	public int cityTime;

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
