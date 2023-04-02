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

    public TextAsset[] _inkJSONs;
    public TextAsset _currentInk;

    void Start()
    {
        DontDestroyOnLoad(this.gameObject);
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void changeToRiverScene() {
        SceneManager.LoadScene("RiverScene");
    }

    public void changeToDialogueScene() {
        SceneManager.LoadScene("IntroScene");
    }

    public void finishedDialogueSection(string sceneName) {
        Debug.Log("Finished Dialogue Section: " + sceneName);
        changeToRiverScene();
    }

    public void finishedRiverSection(string sceneName) {
        Debug.Log("Finished River Section: " + sceneName);
        changeToDialogueScene();
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
