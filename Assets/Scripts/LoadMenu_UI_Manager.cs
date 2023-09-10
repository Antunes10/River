using Ink.Parsed;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using static UnityEngine.JsonUtility;

public class LoadMenu_UI_Manager : MonoBehaviour
{
    [SerializeField]
    private Button[] _loadButtons;
    [SerializeField]
    private TextMeshProUGUI[] _chapterTexts;
    [SerializeField]
    private TextMeshProUGUI[] _dateTexts;

    void Start()
    {
        int number = 0;
        GameState _gs = null;
        foreach (var button in _loadButtons) 
        {
            if(System.IO.File.Exists(Application.dataPath + "/Resources/RiverSave" + number + ".json"))
            {
                StreamReader sr = new StreamReader(Application.dataPath + "/Resources/RiverSave" + number + ".json");
                string json = sr.ReadToEnd();
                sr.Close();
                _gs = FromJson<GameState>(json);

                button.enabled = true;
                _dateTexts[number].text = _gs.date;
                _chapterTexts[number].text = "Chapter " + _gs.currentInkIndex;

                Initialization(button, number);
            }
            else
            {
                button.enabled = false;
                button.GetComponentInChildren<TextMeshProUGUI>().text = null;
            }

            number++;
        }
    }

    public void Initialization(Button button, int index)
    {
        button.onClick.AddListener(() => GameManager.Instance.LoadGame(index));
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
