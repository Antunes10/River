using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

public class PauseMenuRiver : MonoBehaviour
{
    private bool isPaused = false;
    [SerializeField] private Canvas _soundMenuCanvas;

    void Start()
    {
        GetComponent<Canvas>().enabled = false;
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
        _soundMenuCanvas.enabled = false;
        Time.timeScale = 1f;
    }

    public void SoundMenuSwitch()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        _soundMenuCanvas.enabled = !_soundMenuCanvas.enabled;
    }

    public void SetControlsMenuActive()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
    }

    public void BacktoMenu()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
    }

    public void QuittoMainMenu()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        Time.timeScale = 1f;
        GameManager.Instance.changeToMenuScene();
    }
}
