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
    private AudioSource RainSource;

    [SerializeField]
    private Slider masterVolumeSlider;
    [SerializeField]
    private Slider musicVolumeSlider;
    [SerializeField]
    private Slider sfxVolumeSlider;


    private MusicsNarrative currentNarrativeMusic = MusicsNarrative.silence;
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

    }

    public void InitVolumeValues(float master, float music, float sfx)
    {
        AudioListener.volume = master;

        musicSource.volume = music;
        sfxSource.volume = sfx;
        EnvSource.volume = sfx;
        RainSource.volume = sfx;
    }

    public void ChangeVolume(float value, int vol)
    {
        if (vol == 0) {
            AudioListener.volume = value/10;
        } else if (vol == 1) {
            musicSource.volume =  value / 10;
        } else if (vol == 2) {
            sfxSource.volume = 0.8f * value/10;
            EnvSource.volume = 0.35f * value / 10;
            RainSource.volume = 0.5f * value / 10;
        }
    }

    public void SaveVolumes()
    {
        AudioVolumeSettings.Instance.SaveAudio(AudioListener.volume, musicSource.volume, sfxSource.volume);
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
		EnvSource.Stop();
		EnvSource.clip = _EnvSounds[(int)indexer];
        EnvSource.Play();
    }

    public void PlayEvironmentSoundOneShot(EnvironmentSounds indexer)
    {
        EnvSource.PlayOneShot(_EnvSounds[(int)indexer]);
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

    public void PlayRain(bool plays)
    {
        if (plays)
        {
            RainSource.Play();
        }
        else
        {
            RainSource.Stop();
        }
        
    }

    public void StopAllSounds()
    {
        musicSource.Stop();
        EnvSource.Stop();
        sfxSource.Stop();
        RainSource.Stop();
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
        tunnel = 0,
        sparks = 1,
        forest = 2,
        bridge = 3, // find nimbus 
        villageArrival = 4, //
        villageDeparture = 5,
        oak = 6, // meet oak
        respite = 7, // scene before otter
        hazel = 8,
        swamp = 9,
        crow = 10,
        deadBodies= 11,
        silence = 12,
        credits = 15
    }

    public enum EnvironmentSounds
    {
        tunnel = 0,
        river = 1,
        forest = 2,
        bridgeArmy = 3,
        bridgeFalling = 4,
        village = 5,
        nightWind = 6,
        villageBirds = 7,
        villageExplosions = 8,
        plains = 9,
        plainsWar = 10,
        villageDepartue = 11,
        swamp = 12,
        cityWar = 13,
        silence = 14
    }

    public enum SFXSounds
    {
        button = 0,
        startGame = 1,
        nextPage = 2,
        rockHit1 = 3, rockHit2 = 4, rockHit3 = 5,
        wireHit = 6,
        clothHit = 7,
        clothRip1 = 8,
        clothRip2 = 9,
        debrisFalling = 10,
        pouringWaterOut = 11,
        rain = 12,
        RiverVictory = 13,
        RiverDefeat = 14,
        FoodColletion = 15
    }

    private void Load()
    {
        masterVolumeSlider.value = 1;
        musicVolumeSlider.value = 1;
        sfxVolumeSlider.value = 1;
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
