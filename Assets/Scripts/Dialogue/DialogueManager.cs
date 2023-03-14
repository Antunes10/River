using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using Ink.UnityIntegration;

public class DialogueManager : MonoBehaviour
{
    [Header("Params")]
    [SerializeField] private float typingSpeed = 0.04f;

    [Header("Dialogue UI")]

    [Header("Globals Ink File")]
    [SerializeField] private InkFile globalsInkFile;

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
    
    [Header("Choices UI")]
    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;
    private bool choosing;

    private Story currentStory;
    public bool dialogueIsPlaying {get; private set;}
    private bool canSkip = false;
    private bool submitSkip = false;

    private const string SPEAKER_TAG = "speaker";
    private const string PORTRAIT_TAG = "portrait";
    private const string LAYOUT_TAG = "layout";

    private DialogueVariables dialogueVariables;

    private void Awake() {
       if(instance != null) {
           Debug.Log("More than one dialogue manager");
       }
       instance = this;

       dialogueVariables = new DialogueVariables(globalsInkFile.filePath);
    }

    public static DialogueManager GetInstance() {
        return instance;
    }

    public void Start() {
        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        choosing = false;

        // get all of the choices text
        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach(GameObject choice in choices) {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }

        // make all the buttons invisible at the start
        index = 0;
        foreach(GameObject choice in choices) {
            choice.SetActive(false);
            index++;
        }
    }

    private void Update() {
        if (Input.GetMouseButtonDown(0)) { 
            submitSkip = true;
        }

        if (!dialogueIsPlaying) {
            return;
        }
        
        if (Input.GetMouseButtonDown(0) && !choosing && canContinueNextLine) {
            ContinueStory(); 
        }
    }

    public void EnterDialogueMode(TextAsset inkJSON) {
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialoguePanel.SetActive(true);

        dialogueVariables.StartListening(currentStory); 

        // sets everything to the default state
        displayNameText.text = "default";
        portraitAnimator.Play("default");
        leftLayoutAnimator.Play("default");
        rightLayoutAnimator.Play("default");
        middleLayoutAnimator.Play("default");

        ContinueStory();
    }

    private IEnumerator ExitDialogueMode() {
        // When we're exiting dialogue mode, it waits 0.2 seconds before exiting
        yield return new WaitForSeconds(0.2f);

        dialogueVariables.StopListening(currentStory);

        dialogueIsPlaying = false;
        dialoguePanel.SetActive(false);
        dialogueText.text = "";

        leftLayoutAnimator.Play("default");
        rightLayoutAnimator.Play("default");
        middleLayoutAnimator.Play("default");
    }

    private void ContinueStory() {
        if (currentStory.canContinue) {
            if(displayLineCoroutine != null) {
                StopCoroutine(displayLineCoroutine);
            }

            displayLineCoroutine = StartCoroutine(DisplayLine(currentStory.Continue()));
            // handle tags
            HandleTags(currentStory.currentTags);
        }
        else {
            StartCoroutine(ExitDialogueMode());
        }
    }

    private IEnumerator DisplayLine(string line) {
        // empties the text
        dialogueText.text = "";
        HideChoices();
        canContinueNextLine = false;
        continueIcon.SetActive(false);
        submitSkip = false;

        bool isAddingRichText = false;

        StartCoroutine(CanSkip());

        // display letters one at a time
        foreach(char letter in line.ToCharArray()) {
            if (canSkip && submitSkip) {
                dialogueText.text = line;
                break;
            }

            // check for rich text tag. if found, add without waiting
            if (letter == '<' || isAddingRichText) {
                isAddingRichText = true;
                dialogueText.text += letter;
                if (letter == '>') {
                    isAddingRichText = false;
                }
            }
            else {
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

    private void HideChoices() {
        foreach(GameObject choiceButton in choices) {
            choiceButton.SetActive(false);
        }
    }

    private void HandleTags(List<string> currentTags) {
        // loop through each tag
        foreach(string tag in currentTags) {
            // parse the tag
            string[] splitTag = tag.Split(':');

            if(splitTag.Length != 2 && splitTag.Length != 3) {
                Debug.Log("Tag could not be parsed. The size is " + splitTag.Length);
            }    

            string tagKey = splitTag[0].Trim();
            string tagValue = splitTag[1].Trim();

            switch(tagKey) {
                case SPEAKER_TAG:
                    displayNameText.text = tagValue;
                    break;
                case PORTRAIT_TAG:
                    portraitAnimator.Play(tagValue);
                    break;
                case LAYOUT_TAG:
                    string tagSprite = splitTag[2].Trim();
                    switch(tagValue) {
                        case "left":
                            leftLayoutAnimator.Play(tagSprite);
                            break;
                        case "right":
                            rightLayoutAnimator.Play(tagSprite);
                            break;
                        case "middle":
                            middleLayoutAnimator.Play(tagSprite);
                            break;
                        default:
                            Debug.Log("Tag not recognised");
                            break;
                    }
                    break;
                default:
                    Debug.Log("Tag not recognised");
                    break;
            }
        }
    }

    private void DisplayChoices() {
        List<Choice> currentChoices = currentStory.currentChoices;

        // Defensive programming for error detection
        if (currentChoices.Count > choices.Length) {
            Debug.Log("ERROR: There are more choices than what the UI can support");
        }

        if (currentChoices.Count != 0) {
            choosing = true;
        }

        int index = 0;
        foreach(Choice choice in currentChoices) {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }

        // when there are less choices than what the UI can handle it hides those
        for(int i = index; i < choices.Length; i++) {
            choices[i].gameObject.SetActive(false);
        }
    }

    public void MakeChoice(int choiceIndex) {
        if (canContinueNextLine) {
            currentStory.ChooseChoiceIndex(choiceIndex);

            // after choosing an option, it enables the update method to continue 
            // looking for clicks.
            choosing = false;
            ContinueStory();
        }
    }

    public Ink.Runtime.Object GetVariableState(string variableName) {
        Ink.Runtime.Object variableValue = null;
        dialogueVariables.variables.TryGetValue(variableName, out variableValue);
        if (variableValue == null) {
            Debug.LogWarning("Ink Variable was null: " + variableName);
        }
        return variableValue;
    }

}
