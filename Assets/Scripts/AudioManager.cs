using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.IO;
using static UnityEngine.JsonUtility;

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

    private float[] sliders = new float[3];

    private bool flag = false;

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
        LoadAudio();

        sliders[0] = masterVolumeSlider.value;
        sliders[1] = musicVolumeSlider.value;
        sliders[2] = sfxVolumeSlider.value;

        DontDestroyOnLoad(this.gameObject);
    }

    public void ChangeVolume(int vol)
    {
        if (flag == false) {
            return;
        }

        if (vol == 0) {
            // master volume
            AudioListener.volume = masterVolumeSlider.value/10;
        } else if (vol == 1) {
            // music volume
            musicSource.volume = masterVolumeSlider.value/10 * musicVolumeSlider.value/10;
        } else if (vol == 2) {
            // sfx volume
            sfxSource.volume = masterVolumeSlider.value/10 * sfxVolumeSlider.value/10;
            EnvSource.volume = masterVolumeSlider.value/10 * sfxVolumeSlider.value/10;
        }

        SaveAudio(masterVolumeSlider.value, musicVolumeSlider.value, sfxVolumeSlider.value);        

        Debug.Log("Music: " + musicSource.volume + " SFX: " + sfxSource.volume + " Env: " + EnvSource.volume);
    }

    public void ChangeVolume(float master, float music, float sfx, int channel)
    {
        if (channel == 0) {
            // master volume
            AudioListener.volume = master/10;
        } else if (channel == 1) {
            // music volume
            musicSource.volume = AudioListener.volume * music/10;
        } else if (channel == 2) {
            // sfx volume
            sfxSource.volume = AudioListener.volume * sfx/10;
            EnvSource.volume = AudioListener.volume * sfx/10;
        }

        SaveAudio(master, music, sfx);
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

    public void LoadAudio() {
        StreamReader sr = new StreamReader(Application.dataPath + "/Resources/AudioSettings.json");
        string json = sr.ReadToEnd();
        sr.Close();
        sliders = JsonHelper.FromJson<float>(json);

        updateMenuSliders();
        updateSound();

        flag = true;
        Debug.Log("LOAD: " + json);
    }

    public void SaveAudio(float master, float music, float sfx)
    {
        sliders[0] = master;
        sliders[1] = music;
        sliders[2] = sfx;

        string json = JsonHelper.ToJson(sliders);
        StreamWriter sw = new StreamWriter(Application.dataPath + "/Resources/AudioSettings.json");
        sw.Write(json);
        sw.Close();

        Debug.Log("SAVE: " + json);
    }

    public float[] GetSliders() {
        return sliders;
    }

    public void updateMenuSliders() {
        masterVolumeSlider.value = sliders[0];
        musicVolumeSlider.value = sliders[1];
        sfxVolumeSlider.value = sliders[2];
    }

    public void updateSound() {
        musicSource.volume = (sliders[0]/10) * sliders[1] / 10;
        sfxSource.volume = (sliders[0]/10) * sliders[2] / 10;
        EnvSource.volume = (sliders[0]/10) * sliders[2] / 10;
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
