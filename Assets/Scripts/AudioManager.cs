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
    private AudioClip[] _sfxSounds;

    [SerializeField]
    private AudioSource musicSource;
    [SerializeField]
    private AudioSource sfxSource;

    private MusicsNarrative currentNarrativeMusic = MusicsNarrative.prologue;
    public bool switchPrologue = false;

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
        musicSource.clip = _narrativeMusics[(int)indexer];
        musicSource.Play();
    }

    public void PlayNextNarrativeMusic()
    {
        //if currentNarrativeMusic is the prologue one
        if (!switchPrologue)
        {
            // Play the first music clip
            musicSource.clip = _narrativeMusics[0];
            musicSource.Play();
            switchPrologue = true;
            return;
        }

        // Increment the current enum value
        currentNarrativeMusic = (MusicsNarrative)(((int)currentNarrativeMusic + 1) % Enum.GetValues(typeof(MusicsNarrative)).Length);

        // Play the corresponding music clip
        musicSource.clip = _narrativeMusics[(int)currentNarrativeMusic];
        musicSource.Play();
    }

    public void PlaySFX(SFXSounds indexer)
    {
        sfxSource.PlayOneShot(_sfxSounds[(int)indexer]);
    }

    public void PlaySFX(int indexer1, int indexer2)
    {
        sfxSource.PlayOneShot(_sfxSounds[UnityEngine.Random.Range(indexer1, indexer2 + 1)]);
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
        nimbus = 4, // find nimbus 
        villageArrival = 5, //
        villageDepartue = 6,
        oak = 7, // meet oak
        respite = 8 // scene before otter
    }

    public enum SFXSounds
    {
        button = 0,
        startGame = 1,
        nextPage = 2,
        rockHit1 = 3, rockHit2 = 4, rockHit3 = 5,
        wireHit = 6,
        clothHit = 7,
        debrisHit = 8,
        debrisFalling = 9,
        pouringWaterOut = 10,
        rain = 11,
        machineGun = 12,
        explosion = 13,
        RiverVictory = 14,
        RiverDefeat = 15
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
