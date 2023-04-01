using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    void Start()
    {
        triggerDialogue();
    }

    void Update()
    {
    
    }

    void triggerDialogue() {
        DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
    }
}
