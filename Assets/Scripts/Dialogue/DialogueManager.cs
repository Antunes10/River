using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.Video;

public class DialogueManager : MonoBehaviour
{
  public GameObject saveMenuUi;
  public GameObject loadMenuUi;

  [Header("Params")]
  [SerializeField] private float typingSpeed = 0.04f;

  [Header("Globals Ink File")]
  [SerializeField] private TextAsset loadGlobalsJSON;

  public TextAsset currentInk;

  [Header("Dialogue UI")]
  private static DialogueManager instance;
  private Coroutine displayLineCoroutine;
  private bool canContinueNextLine = false;
  [SerializeField] private GameObject dialoguePanel;
  [SerializeField] private TextMeshProUGUI dialogueText;
  [SerializeField] private TextMeshProUGUI displayNameText;
  [SerializeField] private GameObject continueIcon;
  [SerializeField] private Animator portraitAnimator;
  [SerializeField] private Animator leftLayoutAnimator;
  [SerializeField] private Animator middleLayoutAnimator;
  [SerializeField] private Animator rightLayoutAnimator;
  [SerializeField] private Animator sparksLayoutAnimator;
  [SerializeField] private Animator middleLeftAnimator;
  [SerializeField] private Animator middleRightAnimator;
  [SerializeField] private Animator backgroundAnimator;
  [SerializeField] private Animator popupAnimator;
  [SerializeField] private GameObject image;
  [SerializeField] private Animator videoAnimator;
  private GameObject popup;

  private Animator layoutAnimator;

  [Header("Choices UI")]
  [SerializeField] private GameObject[] choices;
  private TextMeshProUGUI[] choicesText;
  private bool choosing;

  private Story currentStory;
  public bool dialogueIsPlaying { get; private set; }
  private bool canSkip = false;
  private bool submitSkip = false;
  private bool playingVideo = false;

  private const string SPEAKER_TAG = "speaker";
  private const string PORTRAIT_TAG = "portrait";
  private const string LAYOUT_TAG = "layout";
  private const string BACKGROUND_TAG = "background";
  private const string NEXT_MUSIC_TAG = "music";
  private const string ENVIRONMENT_TAG = "enviroSound";

    private string savedJson;

  private DialogueVariables dialogueVariables;

  public GameObject pauseMenuUI;

  private void Awake()
  {
    currentInk = GameManager.Instance._currentInk;

    if (instance != null)
    {
      Debug.Log("More than one dialogue manager");
    }
    instance = this;

    dialogueVariables = new DialogueVariables(loadGlobalsJSON);

    dialogueIsPlaying = false;
    dialoguePanel.SetActive(false);
    choosing = false;

    layoutAnimator = dialoguePanel.GetComponent<Animator>();

    // get all of the choices text
    choicesText = new TextMeshProUGUI[choices.Length];
    int index = 0;
    foreach (GameObject choice in choices)
    {
      choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
      index++;
    }

    // make all the buttons invisible at the start
    index = 0;
    foreach (GameObject choice in choices)
    {
      choice.SetActive(false);
      index++;
    }

    EnterDialogueMode(currentInk);
  }

  public static DialogueManager GetInstance()
  {
    return instance;
  }

  public void Start()
  {
        GameManager.Instance.AutoSaveGame();
  }

  private void Update()
  {
    if ((Input.GetMouseButtonDown(0) || Input.GetKey(KeyCode.LeftControl) || Input.GetKeyDown(KeyCode.Space)) && !pauseMenuUI.activeSelf)
    {
      submitSkip = true;
    }

    if (!dialogueIsPlaying)
    {
      return;
    }

    if ((Input.GetMouseButtonDown(0) || Input.GetKeyDown(KeyCode.Space) || Input.GetKey(KeyCode.LeftControl)) && !choosing && canContinueNextLine && !pauseMenuUI.activeSelf && !playingVideo)
    {
      ContinueStory();
    }
  }

  public void SaveGame(int n)
  {
    GameManager.Instance.SaveGame(n);
  }

  public void changeToMenuScene()
  {
    GameManager.Instance.changeToMenuScene();
  }

  public void EnterDialogueMode(TextAsset inkJSON)
  {
        currentStory = new Story(inkJSON.text);

        dialogueIsPlaying = true;
        dialoguePanel.SetActive(true);
        dialogueVariables.StartListening(currentStory);

        BindFunctions();

		// sets everything to the default state
		displayNameText.text = "default";
        portraitAnimator.Play("default");
        leftLayoutAnimator.Play("default");
        rightLayoutAnimator.Play("default");
        middleLayoutAnimator.Play("default");
        sparksLayoutAnimator.Play("default");
        middleLeftAnimator.Play("default");
        middleRightAnimator.Play("default");

        ContinueStory();
  }

    private void BindFunctions()
    {
		currentStory.BindExternalFunction("changeScene", (string sceneName) =>
		{
			ExitDialogueMode();
			switch (sceneName)
			{
				case "RiverScene":
					GameManager.Instance.changeToRiverScene();
					break;
				case "DialogueScene":
                    GameManager.Instance.loadDialogueScene(1);
					break;
				case "EndDayScene":
					GameManager.Instance.changeToEndDayScene();
					break;
				case "Credits":
					GameManager.Instance.changeToCreditsScene();
					break;
			}
		});

		currentStory.BindExternalFunction("gameOver", () =>
		{
			ExitDialogueMode();
			GameManager.Instance.gameOver();
            GameManager.Instance.changeToEndDayScene();
		});

		currentStory.BindExternalFunction("recruitSparks", (bool val) =>
		{
			ExitDialogueMode();
			GameManager.Instance.recruitSparks(val);
		});

		currentStory.BindExternalFunction("recruitOak", (bool val) =>
		{
			ExitDialogueMode();
			GameManager.Instance.recruitOak(val);
		});

		currentStory.BindExternalFunction("recruitCotton", (bool val) =>
		{
			ExitDialogueMode();
			GameManager.Instance.recruitCotton(val);
		});

		currentStory.BindExternalFunction("recruitNimbus", (bool val) =>
		{
			ExitDialogueMode();
			GameManager.Instance.recruitNimbus(val);
		});
		currentStory.BindExternalFunction("hasSparks", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.hasSparks;
		});

		currentStory.BindExternalFunction("hasNimbus", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.hasNimbus;
		});

		currentStory.BindExternalFunction("hasOak", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.hasOak;
		});

		currentStory.BindExternalFunction("hasCotton", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.hasCotton;
		});

		currentStory.BindExternalFunction("savedNimbus", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.NimbusSaved;
		});

		currentStory.BindExternalFunction("savedOak", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.OakSaved;
		});

		currentStory.BindExternalFunction("savedCotton", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.CottonSaved;
		});

		currentStory.BindExternalFunction("foundOldMan", () =>
		{
			ExitDialogueMode();
			GameManager.Instance.foundOldMan();
		});

		currentStory.BindExternalFunction("getFoundOldMan", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.FoundOldMan;
		});

		currentStory.BindExternalFunction("killNimbus", () =>
		{
			ExitDialogueMode();
			GameManager.Instance.killedNimbus();
		});

		currentStory.BindExternalFunction("killedNimbus", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.KilledNimbus;
		});

		currentStory.BindExternalFunction("changeFood", (int val) =>
		{
			ExitDialogueMode();
			GameManager.Instance.changeFood(val);
		});

		currentStory.BindExternalFunction("getFood", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance._gs.currentFood;
		});

		currentStory.BindExternalFunction("changeHope", (int val) =>
		{
			ExitDialogueMode();
			GameManager.Instance.changeHope(val);
		});

		currentStory.BindExternalFunction("foundNimbus", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance.foundNimbus();
		});

		currentStory.BindExternalFunction("foundOak", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance.foundOak();
		});

		currentStory.BindExternalFunction("foundFood", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance.foundFood();
		});

		currentStory.BindExternalFunction("cityDecision", (int val) =>
		{
            //0 = Food, 1 = Nimbus, 2 = Oak, 3 = Random
			ExitDialogueMode();
			GameManager.Instance.cityDecision(val);
		});

		currentStory.BindExternalFunction("getCityDecision", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance.getCityDecision();
		});

		currentStory.BindExternalFunction("getCityTime", () =>
		{
			ExitDialogueMode();
			return GameManager.Instance.getCityTime();
		});

		currentStory.BindExternalFunction("unlockImage", (int val) =>
		{
			ShowPopup();
			ExitDialogueMode();
			GameManager.Instance.UnlockImage(val);
		});

		currentStory.BindExternalFunction("playSparksAnim", () =>
		{
			ExitDialogueMode();
			playingVideo = true;
			image.SetActive(true);

			StartCoroutine(ExitVideo());
		});

		currentStory.BindExternalFunction("getRandom", (int val) =>
		{
			ExitDialogueMode();
			return Random.Range(0, val);
		});
	}

  private IEnumerator ExitVideo() {
    yield return new WaitForSeconds(1.8f);
    image.SetActive(false);

    // hardcoded
    backgroundAnimator.Play("tunnel");
    leftLayoutAnimator.Play("tails_default");
    rightLayoutAnimator.Play("sparks_default_m");
    middleLayoutAnimator.Play("default");
    
    playingVideo = false;
  }

  private IEnumerator ExitDialogueMode()
  {
    // When we're exiting dialogue mode, it waits 0.2 seconds before exiting
    yield return new WaitForSeconds(0.2f);

    dialogueVariables.StopListening(currentStory);

    currentStory.UnbindExternalFunction("changeScene");

    dialogueIsPlaying = false;
    dialoguePanel.SetActive(false);
    dialogueText.text = "";

    leftLayoutAnimator.Play("default");
    rightLayoutAnimator.Play("default");
    middleLayoutAnimator.Play("default");
    sparksLayoutAnimator.Play("default");
    middleLeftAnimator.Play("default");
    middleRightAnimator.Play("default");
  }

  private void ContinueStory()
  {

    if (currentStory.canContinue)
    {
      if (displayLineCoroutine != null)
      {
        StopCoroutine(displayLineCoroutine);
      }

      displayLineCoroutine = StartCoroutine(DisplayLine(currentStory.Continue()));
      // handle tags
      HandleTags(currentStory.currentTags);
    }
    else
    {
      StartCoroutine(ExitDialogueMode());
    }
  }

  private IEnumerator DisplayLine(string line)
  {
    // empties the text
    dialogueText.text = "";
    HideChoices();
    canContinueNextLine = false;
    continueIcon.SetActive(false);
    submitSkip = false;

    bool isAddingRichText = false;

    StartCoroutine(CanSkip());

    // display letters one at a time
    foreach (char letter in line.ToCharArray())
    {
      if (canSkip && submitSkip)
      {
        dialogueText.text = line;
        break;
      }

      // check for rich text tag. if found, add without waiting
      if (letter == '<' || isAddingRichText)
      {
        isAddingRichText = true;
        dialogueText.text += letter;
        if (letter == '>')
        {
          isAddingRichText = false;
        }
      }
      else
      {
        dialogueText.text += letter;
        yield return new WaitForSeconds(typingSpeed);
      }
    }

    continueIcon.SetActive(true);
    DisplayChoices();
    canContinueNextLine = true;
    canSkip = false;
  }

  private IEnumerator CanSkip()
  {
    canSkip = false; //Making sure the variable is false.
    yield return new WaitForSeconds(0.05f);
    canSkip = true;
  }

  private void HideChoices()
  {
    foreach (GameObject choiceButton in choices)
    {
      choiceButton.SetActive(false);
    }
  }

  private void HandleTags(List<string> currentTags)
  {
    // loop through each tag
    foreach (string tag in currentTags)
    {
      // parse the tag
      string[] splitTag = tag.Split(':');

      if (splitTag.Length != 2 && splitTag.Length != 3)
      {
        Debug.Log("Tag could not be parsed. The size is " + splitTag.Length);
      }

      string tagKey = splitTag[0].Trim();
      string tagValue = splitTag[1].Trim();

      switch (tagKey)
      {
        case SPEAKER_TAG:
          displayNameText.text = tagValue;
          if (tagValue == "")
          {
            layoutAnimator.Play("NarratorMode");
          }
          else
          {
            layoutAnimator.Play("DialogueMode");
          }
          break;
        case PORTRAIT_TAG:
          portraitAnimator.Play(tagValue);
          break;
        case LAYOUT_TAG:
          string tagSprite = splitTag[2].Trim();
          switch (tagValue)
          {
            case "left":
              leftLayoutAnimator.Play(tagSprite);
              break;
            case "right":
              rightLayoutAnimator.Play(tagSprite);
              break;
            case "middle":
              middleLayoutAnimator.Play(tagSprite);
              break;
            case "sparks":
              sparksLayoutAnimator.Play(tagSprite);
              break;
            case "middle_left":
              middleLeftAnimator.Play(tagSprite);
              break;
            case "middle_right":
              middleRightAnimator.Play(tagSprite);
              break;
            default:
              Debug.Log("Tag not recognised");
              break;
          }
          break;
        case BACKGROUND_TAG:
          displayNameText.text = tagValue;
          backgroundAnimator.Play(tagValue);
          break;
        case NEXT_MUSIC_TAG:
          switch (tagValue)
          {
            case "tunnel":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.tunnel);
              break;
            case "sparks":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.sparks);
              break;
            case "forest":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.forest);
              break;
            case "nimbus":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.bridge);
              break;
            case "villageArrival":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.villageArrival);
              break;
            case "villageDepartue":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.villageDeparture);
              break;
            case "oak":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.oak);
              break;
            case "respite":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.respite);
              break;
            case "swamp":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.swamp);
              break;
            case "silence":
              AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.silence);
              break;
          }
          break;
        case ENVIRONMENT_TAG:
           switch (tagValue)
           {
             case "tunnel":
                AudioManager.Instance.PlayEvironmentSound(AudioManager.EnvironmentSounds.tunnel);
                break;
            case "river":
                AudioManager.Instance.PlayEvironmentSound(AudioManager.EnvironmentSounds.river);
                break;
             case "forest":
                AudioManager.Instance.PlayEvironmentSound(AudioManager.EnvironmentSounds.forest);
                break;
             case "bridge":
                AudioManager.Instance.PlayEvironmentSound(AudioManager.EnvironmentSounds.bridgeArmy);
                break;
            case "bridgeFalling":
                AudioManager.Instance.PlayEvironmentSoundOneShot(AudioManager.EnvironmentSounds.bridgeFalling);
                break;
            case "village":
                AudioManager.Instance.PlayEvironmentSound(AudioManager.EnvironmentSounds.village);
                break;
            case "nightWind":
                AudioManager.Instance.PlayEvironmentSound(AudioManager.EnvironmentSounds.nightWind);
                break;
            case "villageBirds":
                AudioManager.Instance.PlayEvironmentSoundOneShot(AudioManager.EnvironmentSounds.villageBirds);
                break;
            case "villageExplosions":
                AudioManager.Instance.PlayEvironmentSoundOneShot(AudioManager.EnvironmentSounds.villageExplosions);
                break;
            case "swamp":
                AudioManager.Instance.PlayEvironmentSoundOneShot(AudioManager.EnvironmentSounds.swamp);
                break;
            case "silence":
                AudioManager.Instance.PlayEvironmentSound(AudioManager.EnvironmentSounds.silence);
                break;
             }
           break;


        default:
          Debug.Log("Tag not recognised");
          break;
      }
    }
  }

  private void DisplayChoices()
  {
    List<Choice> currentChoices = currentStory.currentChoices;

    // Defensive programming for error detection
    if (currentChoices.Count > choices.Length)
    {
      Debug.Log("ERROR: There are more choices than what the UI can support");
    }

    if (currentChoices.Count != 0)
    {
      choosing = true;
    }

    int index = 0;
    foreach (Choice choice in currentChoices)
    {
      choices[index].gameObject.SetActive(true);
      choicesText[index].text = choice.text;
      index++;
    }

    // when there are less choices than what the UI can handle it hides those
    for (int i = index; i < choices.Length; i++)
    {
      choices[i].gameObject.SetActive(false);
    }
  }

  public void MakeChoice(int choiceIndex)
  {
    if (canContinueNextLine)
    {
      currentStory.ChooseChoiceIndex(choiceIndex);

      // after choosing an option, it enables the update method to continue 
      // looking for clicks.
      choosing = false;
      ContinueStory();
    }
  }

  public Ink.Runtime.Object GetVariableState(string variableName)
  {
    Ink.Runtime.Object variableValue = null;
    dialogueVariables.variables.TryGetValue(variableName, out variableValue);
    if (variableValue == null)
    {
      Debug.LogWarning("Ink Variable was null: " + variableName);
    }
    return variableValue;
  }

  private void ShowPopup() {
    popupAnimator.Play("FadeIn");
  }

}
