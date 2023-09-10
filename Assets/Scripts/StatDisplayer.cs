using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class StatDisplayer : MonoBehaviour
{

  [SerializeField] private TextMeshProUGUI foodText;
  [SerializeField] private TextMeshProUGUI hopeText;
  GameManager gm;

  // Start is called before the first frame update
  void Start()
  {

    switch (GameManager.Instance.getFood())
    {
      case 1:
        foodText.text = "LOW";
        foodText.color = Color.red;
        break;
      case 2:
        foodText.text = "MEDIUM";
        foodText.color = Color.yellow;
        break;
      case 3:
        foodText.text = "HIGH";
        foodText.color = Color.green;
        break;
    }

    switch (GameManager.Instance.getHope())
    {
      case 1:
        hopeText.text = "LOW";
        hopeText.color = Color.red;
        break;
      case 2:
        hopeText.text = "MEDIUM";
        hopeText.color = Color.yellow;
        break;
      case 3:
        hopeText.text = "HIGH";
        hopeText.color = Color.green;
        break;
    }



  }

  // Update is called once per frame
  void Update()
  {

  }

  public void switchSceneToDialogue()
  {
    GameManager.Instance.changeToNextDialogueScene();
  }
}
