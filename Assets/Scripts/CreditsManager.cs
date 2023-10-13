using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CreditsManager : MonoBehaviour
{
    public void Start()
    {
        // play menu song
        AudioManager.Instance.PlayMenuMusic();

    }

    public void ChangeToMainMenu()
    {
        SceneManager.LoadScene("Menu");
    }
}
