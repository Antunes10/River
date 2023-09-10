using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Menu_UI_Manager : MonoBehaviour
{
    #region Menus Variables
    [Header("Menus")]
    [SerializeField]
    private GameObject[] menus;
    private int currMenuIndex = 0;
    #endregion

    #region Play Button Variable
    [Header("Play Button")]
    [SerializeField]
    private Button _playButton;
    #endregion

    #region Quit Application Button Variable
    [Header("Quit Application Button")]
    [SerializeField]
    private Button _quitButton;
    #endregion

    void Start()
    {
        AddButtonListeners();
    }

    /// <summary>
    /// Adds Listeners to Game Manager Functions
    /// </summary>
    public void AddButtonListeners()
    {
        _playButton.onClick.AddListener(() => GameManager.Instance.startDialogue());
        _quitButton.onClick.AddListener(() => GameManager.Instance.Exit());
    }

    /// <summary>
    /// Loads the next Menu and disables the previous
    /// </summary>
    /// <param name="choosenMenu">Index of Menu to Enable</param>
    public void LoadMenu(int choosenMenu)
    {
        menus[currMenuIndex].SetActive(false);
        menus[choosenMenu].SetActive(true);
        currMenuIndex = choosenMenu;
    }
}
