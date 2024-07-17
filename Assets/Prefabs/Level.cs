using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "Level", menuName = "ScriptableObjects/Level")]
public class Level : ScriptableObject
{
    public float levelLength;

    [Header("Background")]
    public GameObject backgrounds;

    [Header("Music")]
    public AudioManager.MusicsRiver music;
    public AudioManager.EnvironmentSounds envSounds;

    [Header("Obstacles Variables")]
    public GameObject[] obstacleList;
    public float minProb;
    public float maxProb;

    [Header("Rain Variables")]
    public bool rain;
    public float rainInterval;
}
