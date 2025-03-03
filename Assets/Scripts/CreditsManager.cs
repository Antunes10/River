using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CreditsManager : MonoBehaviour
{
    public void Start()
    {
        // play credits song
        AudioManager.Instance.PlayNarrativeMusic(AudioManager.MusicsNarrative.credits);
        AudioManager.Instance.ChangeVolume(7, 0);
		AudioManager.Instance.ChangeVolume(7, 1);
        AudioManager.Instance.SaveVolumes();


	}

    public void ChangeToMainMenu()
    {
        GameManager.Instance.changeToMenuScene();
    }
}
