using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

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
    private AudioClip[] _EnvSounds;

    [SerializeField]
    private AudioSource musicSource;
    [SerializeField]
    private AudioSource sfxSource;
    [SerializeField]
    private AudioSource EnvSource;

    [SerializeField]
    private Slider masterVolumeSlider;
    [SerializeField]
    private Slider musicVolumeSlider;
    [SerializeField]
    private Slider sfxVolumeSlider;

    //base volume values
    private float musicVolume;
    private float sfxVolume;
    private float envVolume;

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
        musicVolume = musicSource.volume;
        envVolume = EnvSource.volume;
        sfxVolume = sfxSource.volume;

        DontDestroyOnLoad(this.gameObject);
        if (!PlayerPrefs.HasKey("masterVolume"))
        {
            PlayerPrefs.SetFloat("masterVolume", 10);
        } else if (!PlayerPrefs.HasKey("musicVolume")) {
            PlayerPrefs.SetFloat("musicVolume", 10);
        } else if (!PlayerPrefs.HasKey("sfxVolume")) {
            PlayerPrefs.SetFloat("sfxVolume", 10);
        }

        Load();
    }

    public void ChangeVolume(int vol)
    {
        if (vol == 0) {
            AudioListener.volume = masterVolumeSlider.value/10;
        } else if (vol == 1) {
            musicSource.volume = musicVolume * musicVolumeSlider.value/10;
        } else if (vol == 2) {
            sfxSource.volume = sfxVolume * sfxVolumeSlider.value/10;
            EnvSource.volume = envVolume * sfxVolumeSlider.value / 10;
        }
        Save();
    }

    public void ChangeVolume(float value, int vol)
    {
        if (vol == 0) {
            AudioListener.volume = value/10;
        } else if (vol == 1) {
            musicSource.volume = musicVolume * value / 10;
        } else if (vol == 2) {
            sfxSource.volume = sfxVolume * value/10;
            EnvSource.volume = envVolume * value / 10;
        }
        Save();
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

    public void PlayEvironmentSound(EnvironmentSounds indexer)
    {
        EnvSource.clip = _EnvSounds[(int)indexer];
        EnvSource.Play();
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

    public void StopAllSounds()
    {
        musicSource.Stop();
        EnvSource.Stop();
        sfxSource.Stop();
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

    public enum EnvironmentSounds
    {
        tunnel_Nar1 = 0,
        tunnel_Riv1 = 1,
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
        clothRip1, clothRip2,
        debrisHit,
        debrisFalling,
        pouringWaterOut,
        rain,
        machineGun,
        explosion,
        RiverVictory,
        RiverDefeat
    }

    private void Load()
    {/*
        masterVolumeSlider.value = PlayerPrefs.GetFloat("masterVolume");
        musicVolumeSlider.value = PlayerPrefs.GetFloat("musicVolume");
        sfxVolumeSlider.value = PlayerPrefs.GetFloat("sfxVolume");*/
    }

    private void Save()
    {/*
        PlayerPrefs.SetFloat("masterVolume", masterVolumeSlider.value);
        PlayerPrefs.SetFloat("musicVolume", musicVolumeSlider.value);
        PlayerPrefs.SetFloat("sfxVolume", sfxVolumeSlider.value);*/
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
