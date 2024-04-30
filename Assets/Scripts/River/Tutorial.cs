using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tutorial : MonoBehaviour
{
    private LevelManager _levelManager;
    [SerializeField] private GameObject _tutorialPanel;

    private int[] tutorialLevels = {1, 4};

    void Start()
    {
        _levelManager = LevelManager.Instance;
        _levelManager.PauseUnpause();   

        Debug.Log(GameManager.Instance.GetCurrentRiver());

        foreach (int i in tutorialLevels) {
            if (i == GameManager.Instance.GetCurrentRiver() + 1) {
                return;
            }
        }

        Unpause();
    }

    public void Unpause()
    {
        _tutorialPanel.SetActive(false);
        _levelManager.PauseUnpause();
        _levelManager.StartMusic();
    }


}
