using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AudioDistributor : MonoBehaviour
{
    [SerializeField] private Button _exit;
    [SerializeField] private Slider _master;
    [SerializeField] private Slider _music;
    [SerializeField] private Slider _sfx;
    void Start()
    {
        _master.value = AudioVolumeSettings.Instance.GetVolumes()[0] * 10;
        _music.value = AudioVolumeSettings.Instance.GetVolumes()[1] * 10;
        _sfx.value = AudioVolumeSettings.Instance.GetVolumes()[2] * 10;

        _exit.onClick.AddListener( ()=> AudioManager.Instance.SaveVolumes());
        _master.onValueChanged.AddListener(delegate { AudioManager.Instance.ChangeVolume(_master.value, 0); });
        _music.onValueChanged.AddListener(delegate { AudioManager.Instance.ChangeVolume(_music.value, 1); });
        _sfx.onValueChanged.AddListener(delegate { AudioManager.Instance.ChangeVolume(_sfx.value, 2); });
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
