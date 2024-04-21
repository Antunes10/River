using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditor;
using UnityEngine;

public class PauseMenuRiver : MonoBehaviour
{
    public GameObject controlsMenu;
    [SerializeField] private TextMeshProUGUI _nimbusText;
    [SerializeField] private TextMeshProUGUI _oakText;
    private bool isPaused = false;

    void Start()
    {
        _oakText.text = GameManager.Instance.GetHasOak() ? "R - Use Oak" : "";
        _nimbusText.text = GameManager.Instance.GetHasNimbus() ? "SPACE - Use Nimbus" : "";
        GetComponent<Canvas>().enabled = false;
        controlsMenu.SetActive(false);
    }


    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) && !LevelManager.Instance._gameLost)
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
        GetComponent<Canvas>().enabled = true;
        Time.timeScale = 0f;
    }

    public void ResumeGame()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        isPaused = false;
        GetComponent<Canvas>().enabled = false;
        controlsMenu.SetActive(false);
        Time.timeScale = 1f;
    }

    public void SetControlsMenuActive()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        controlsMenu.SetActive(true);
    }

    public void BacktoMenu()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        controlsMenu.SetActive(false);
    }

    public void QuittoMainMenu()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        Time.timeScale = 1f;
        GameManager.Instance.changeToMenuScene();
    }
}
