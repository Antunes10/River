using Ink.Parsed;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using static UnityEngine.JsonUtility;

public class SaveMenu_UI_Manager : MonoBehaviour
{
    [SerializeField]
    private Button[] _loadButtons;
    [SerializeField]
    private TextMeshProUGUI[] _chapterTexts;

    void Start()
    {
        LoadSaveInfo();
    }

    public void LoadSaveInfo()
    {
        int number = 0;
        GameState _gs = null;
        foreach (var button in _loadButtons)
        {
            if (System.IO.File.Exists(Application.dataPath + "/Resources/RiverSave" + number + ".json"))
            {
                StreamReader sr = new StreamReader(Application.dataPath + "/Resources/RiverSave" + number + ".json");
                string json = sr.ReadToEnd();
                sr.Close();
                _gs = FromJson<GameState>(json);

                button.enabled = true;
                button.GetComponentInChildren<TextMeshProUGUI>().text = _gs.date;
                _chapterTexts[number].text = "Chapter " + (_gs.currentInkIndex + 1);
            }

            Initialization(button, number);
            number++;
        }
    }

    public void Initialization(Button button, int index)
    {
        button.onClick.AddListener(() => GameManager.Instance.SaveGame(index));
        button.onClick.AddListener(() => LoadSaveInfo());
    }

    // Update is called once per frame
    void Update()
    {

    }
}
