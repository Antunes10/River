using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "Level", menuName = "ScriptableObjects/Level")]
public class Level : ScriptableObject
{
    public bool rain;
    public float rainInterval;
    public GameObject[] obstacleList;
    public float levelLength;

    [Header("Obstacles Probability")]
    public float min;
    public float max;

    [Header("Background")]
    public GameObject backgrounds;

    [Header("Music")]
    public AudioManager.MusicsRiver music;
}
