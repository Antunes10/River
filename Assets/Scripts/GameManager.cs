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
    public Level _actualLevel;

    //public DialogueManager _dialogueManager;
    //public LevelManager _levelManager;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    void Start()
    {
        DontDestroyOnLoad(this.gameObject);
        //_dialogueManager.EnterDialogueMode(inkJSON);
    }

    // Update is called once per frame
    void Update()
    {

    }

    void triggerDialogue() {
        DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
    }

    public void changeToRiverScene() {
        SceneManager.LoadScene("RiverScene");
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
