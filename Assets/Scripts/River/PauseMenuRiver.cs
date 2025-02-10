using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

public class PauseMenuRiver : MonoBehaviour
{
    [SerializeField] private Canvas _soundMenuCanvas;

    void Start()
    {
        GetComponent<Canvas>().enabled = false;
    }


    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) && !LevelManager.Instance._gameLost)
        {
            AudioManager.Instance.PlaySFX(AudioManager.SFXSounds.button);
            LevelManager.Instance.PauseUnpause();
            _soundMenuCanvas.enabled = false;
        }
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
