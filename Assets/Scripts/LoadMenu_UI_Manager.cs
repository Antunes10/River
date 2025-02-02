using Ink.Parsed;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using static UnityEngine.JsonUtility;
using static UnityEngine.UI.CanvasScaler;

public class LoadMenu_UI_Manager : MonoBehaviour
{
    [SerializeField]
    private Button[] _loadButtons;
    [SerializeField]
    private TextMeshProUGUI[] _chapterTexts;
    [SerializeField]
    private TextMeshProUGUI[] _dateTexts;
    [SerializeField]
    private TextMeshProUGUI _title;
    [SerializeField]
    private Button _toManual;
    [SerializeField]
    private Button _toAuto;

    void Start()
    {
        LoadSaveInfo(true);
    }

    public void LoadSaveInfo(bool isOnManual)
    {
        int number = 0;
        GameState _gs = null;
        string saveMode = null;
        if (isOnManual)
        {
            saveMode = "/RiverSave";
        }
        else
        {
            saveMode = "/RiverAutoSave";
        }

        
        foreach (var button in _loadButtons)
        {
            if (System.IO.File.Exists(Application.persistentDataPath + saveMode + number + ".json"))
            {
                StreamReader sr = new StreamReader(Application.persistentDataPath + saveMode + number + ".json");
                string json = sr.ReadToEnd();
                sr.Close();
                _gs = FromJson<GameState>(json);

                button.enabled = true;
                _dateTexts[number].text = _gs.date;
                _chapterTexts[number].text = "Chapter " + (_gs.currentInkIndex + 1);

                Initialization(button, number, saveMode);
            }
            else
            {
                button.enabled = false;
                button.GetComponentInChildren<TextMeshProUGUI>().text = null;
            }

            number++;
        }
    }

    public void ChangeLoadMenus(bool isOnManual)
    {
        if(isOnManual)
        {
            _title.text = "Auto Saves";
            _toAuto.interactable = false;
            _toManual.interactable = true;
            LoadSaveInfo(false);
        }
        else
        {
            _title.text = "Manual Saves";
            _toAuto.interactable = true;
            _toManual.interactable = false;
            LoadSaveInfo(true);
        }
    }

    public void Initialization(Button button, int index, string saveMode)
    {
        button.onClick.AddListener(() => GameManager.Instance.LoadGame(index, saveMode));
    }

    // Update is called once per frame
    void Update()
    {

    }
}
