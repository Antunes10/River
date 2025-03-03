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

    }

    public void ChangeToMainMenu()
    {
        SceneManager.LoadScene("Menu");
    }
}
