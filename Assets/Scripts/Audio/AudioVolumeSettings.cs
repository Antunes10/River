using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.UI;
using static UnityEngine.JsonUtility;

public class AudioVolumeSettings : MonoBehaviour
{
    // Start is called before the first frame update
    private float[] volumes = new float[3];
    void Start()
    {
        DontDestroyOnLoad(this.gameObject);

        if (System.IO.File.Exists(Application.dataPath + "/Resources/AudioSettings.json"))
        {
            LoadAudio();
        }
        else
        {
            SaveAudio(1f, 1f, 1f);
        }
        
        AudioManager.Instance.InitVolumeValues(volumes[0], volumes[1], volumes[2]);
    }

    public float[] GetVolumes()
    {
        return volumes;
    }

    public void LoadAudio()
    {
        StreamReader sr = new StreamReader(Application.dataPath + "/Resources/AudioSettings.json");
        string json = sr.ReadToEnd();
        sr.Close();
        volumes = JsonHelper.FromJson<float>(json);

        Debug.Log("LOAD: " + json);
    }

    public void SaveAudio(float master, float music, float sfx)
    {
        volumes[0] = master;
        volumes[1] = music;
        volumes[2] = sfx;

        string json = JsonHelper.ToJson(volumes);
        StreamWriter sw = new StreamWriter(Application.dataPath + "/Resources/AudioSettings.json");
        sw.Write(json);
        sw.Close();

        Debug.Log("SAVE: " + json);
    }

    #region Singleton
    private static AudioVolumeSettings _instance;
    public static AudioVolumeSettings Instance
    {
        get
        {
            if (_instance == null) _instance = FindObjectOfType<AudioVolumeSettings>();
            return _instance;
        }
    }
    #endregion
}
