using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[CreateAssetMenu(fileName = "Level", menuName = "ScriptableObjects/Level")]
public class Level : ScriptableObject
{
    public float levelLength;

    [Header("Tutorials")]
    public bool hasTutorial;
    public Sprite[] tutorials;
    public TutorialDependance dependance;

	[Header("Goes to Campfire?")]
    public bool GoesToCampfire;

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

    public enum TutorialDependance
    {
        None = 0,
        Nimbus = 1,
        Oak = 2,
        Cotton = 3
    }
}
