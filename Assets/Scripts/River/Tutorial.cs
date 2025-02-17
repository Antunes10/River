using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Tutorial : MonoBehaviour
{
    private LevelManager _levelManager;
    [SerializeField] private GameObject _tutorialPanel;
    [SerializeField] private GameObject _imagePanel;
    [SerializeField] private Sprite[] _tutorialImages;

    private int[] tutorialLevels = {1, 4};

    void Start()
    {
        _levelManager = LevelManager.Instance;
        _levelManager.PauseUnpause();   

        int index = 0;
        foreach (int i in tutorialLevels) {
            if (i == GameManager.Instance._gs.currentLevelIndex + 1) {
                SetImage(index);
                return;
            }
            index++;
        }

        Unpause();
    }

    public void Unpause()
    {
        _tutorialPanel.SetActive(false);
        _levelManager.PauseUnpause();
        _levelManager.StartMusic();
    }

    private void SetImage(int index) {
        if (index == 0) {
            _imagePanel.GetComponent<Image>().sprite = _tutorialImages[index];
        }
        else if (index == 1 && GameManager.Instance._gs.hasNimbus) {
            _imagePanel.GetComponent<Image>().sprite = _tutorialImages[index];
        }
        else {
            Unpause();
            return;
        }
        
    }


}
