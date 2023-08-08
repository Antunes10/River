using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    [SerializeField]
    private AudioClip[] _menuMusics;
    [SerializeField]
    private AudioClip[] _riverMusics;
    [SerializeField]
    private AudioClip[] _narrativeMusics;

    [SerializeField]
    private AudioSource musicSource;

    private void Awake()
    {
        if (Instance != this)
        {
            Destroy(gameObject);
        }
    }

    void Start()
    {
        DontDestroyOnLoad(this.gameObject);
    }

    public void PlayMenuMusic()
    {
        musicSource.clip = _menuMusics[0];
        musicSource.Play();
    }

    public void PlayRiverMusic(MusicsRiver indexer)
    {
        musicSource.clip = _riverMusics[(int)indexer];
        musicSource.Play();
    }

    public void PlayNarrativeMusic(MusicsNarrative indexer)
    {
        musicSource.clip = _riverMusics[(int)indexer];
        musicSource.Play();
    }

    public enum MusicsRiver
    {
        tunnel = 0,
        forest = 1,
        fields = 2,
        swamp = 3,
        city = 4
    }

    public enum MusicsNarrative
    {
        prologue = 0,
        tunnel = 1,
        sparks = 2,
        forest = 3,
        nimbus = 4,
        villageArrival = 5,
    }

    #region Singleton
    private static AudioManager _instance;
    public static AudioManager Instance
    {
        get
        {
            if (_instance == null) _instance = FindObjectOfType<AudioManager>();
            return _instance;
        }
    }
    #endregion
}
