using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class StatDisplayer : MonoBehaviour
{
  [SerializeField] private TextMeshProUGUI foodText;
  [SerializeField] private TextMeshProUGUI hopeText;
  [SerializeField] private TextMeshProUGUI dayText;
  [SerializeField] public GameObject Button;
  GameManager gm;

  #region Menus Variables
  [Header("Backgrounds")]
  [SerializeField]
  private GameObject[] backgrounds;
  #endregion

  // Start is called before the first frame update
  void Start()
  {
    StartCoroutine(ButtonCoroutine());
    switch(GameManager.Instance.GetCurrentInk()) 
    {
      case 4:
        dayText.text = "End of Day 1";
        BackgroundChanger(0);
        break;
      case 7:
        dayText.text = "End of Day 2";
        BackgroundChanger(1);
        break;  
      case 10:
        dayText.text = "End of Day 3";
        BackgroundChanger(2);
        break;
      default:
        dayText.text = "ERROR";
        break;   
    }

    switch (GameManager.Instance.getFood())
    {
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
      default:
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
      default:
        hopeText.text = "High";
        hopeText.color = Color.green;
        break;
    }

  }

  IEnumerator ButtonCoroutine()
  {
      yield return new WaitForSeconds(2.5f);
      Button.SetActive(true);
  }

  // Update is called once per frame
  void Update()
  {

  }

  public void BackgroundChanger(int i) {
    for (int j = 0; j < backgrounds.Length; j++) {
      if (j == i) {
        backgrounds[j].SetActive(true);
      } else {
        backgrounds[j].SetActive(false);
      }
    }
  }

  public void switchSceneToDialogue()
  {
    GameManager.Instance.changeToNextDialogueScene();
  }
}
