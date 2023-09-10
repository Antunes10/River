using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public class PauseMenu : MonoBehaviour
{

    public GameObject pauseMenuUI;
    public GameObject saveMenuUi;
    private bool isPaused = false;

    void Start()
    {
        pauseMenuUI.SetActive(false);
    }


    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (isPaused)
            {
                ResumeGame();
            }
            else
            {
                PauseGame();
            }
        }
    }

    public void PauseGame()
    {
        isPaused = true;
        pauseMenuUI.SetActive(true);
        Time.timeScale = 0f;
    }

    public void ResumeGame()
    {
        isPaused = false;
        pauseMenuUI.SetActive(false);
        Time.timeScale = 1f;
    }

    public void SetMenuActive(GameObject menu)
    {
        menu.SetActive(true);
    }

    public void BacktoMenu(GameObject menu)
    {
        menu.SetActive(false);
    }

    public void QuittoMainMenu()
    {
        Time.timeScale = 1f;
        GameManager.Instance.changeToMenuScene();
    }
}
