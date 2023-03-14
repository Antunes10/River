using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    void Start()
    {
        DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
    }

    void Update()
    {
    
    }
}
