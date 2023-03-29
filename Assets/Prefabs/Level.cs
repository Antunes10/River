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
}
