using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class StatDisplayer : MonoBehaviour
{

    [SerializeField] private TextMeshProUGUI foodText;
    [SerializeField] private TextMeshProUGUI hopeText; 

    // Start is called before the first frame update
    void Start()
    {
        switch (GameManager.Instance.getFood()) {
            case 1:
                foodText.text = "Low";
                foodText.color = Color.red;
                break;
            case 2:
                foodText.text = "Medium";
                foodText.color = Color.yellow;
                break;
            case 3:
                foodText.text = "High";
                foodText.color = Color.green;
                break;
        }

        switch (GameManager.Instance.getHope())
        {
            case 1:
                hopeText.text = "Low";
                hopeText.color = Color.red;
                break;
            case 2:
                hopeText.text = "Medium";
                hopeText.color = Color.yellow;
                break;
            case 3:
                hopeText.text = "High";
                hopeText.color = Color.green;
                break;
        }

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            GameManager.Instance.changeToDialogueScene();
        }
    }
}
