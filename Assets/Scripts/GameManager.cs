using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    // Start is called before the first frame update
    public bool _hasNimbus;
    public bool _hasOak;
    public bool _hasCotton;

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    #region Singleton
    private static GameManager _instance;
    public static GameManager Instance
    {
        get
        {
            if (_instance == null) _instance = FindObjectOfType<GameManager>();
            return _instance;
        }
    }
    #endregion

}
