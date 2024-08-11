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
    [SerializeField] private Slider masterVolumeSlider;
    [SerializeField] private Slider musicVolumeSlider;
    [SerializeField] private Slider sfxVolumeSlider;

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
        Time.timeScale = 1f;
    }

    public void SoundMenuSwitch()
    {
        AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
        _soundMenuCanvas.enabled = !_soundMenuCanvas.enabled;
    }

    public void ChangeVolume(int vol)
    {
        switch (vol) {
        case 0:
            AudioManager.Instance.ChangeVolume(masterVolumeSlider.value, vol);
            break;
        case 1:
            AudioManager.Instance.ChangeVolume(musicVolumeSlider.value, vol);
            break;
        case 2:
            AudioManager.Instance.ChangeVolume(sfxVolumeSlider.value, vol);
            break;
        }
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
