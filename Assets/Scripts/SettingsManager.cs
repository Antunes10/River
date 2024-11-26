using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SettingsManager : MonoBehaviour
{
    [SerializeField] private Slider masterVolumeSlider;
    [SerializeField] private Slider musicVolumeSlider;
    [SerializeField] private Slider sfxVolumeSlider;
    private bool audioFlag = false;

    void Start()
    {
        float[] sliders = AudioManager.Instance.GetSliders();
        masterVolumeSlider.value = sliders[0];
        musicVolumeSlider.value = sliders[1];
        sfxVolumeSlider.value = sliders[2];

        audioFlag = true;
    }

    public void ChangeVolume(int vol)
    {
        if (!audioFlag) {
            return;
        }
        
        AudioManager.Instance.ChangeVolume(
            masterVolumeSlider.value,
            musicVolumeSlider.value,
            sfxVolumeSlider.value,
            vol);
    }
}
