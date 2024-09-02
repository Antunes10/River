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
  [SerializeField] private GameObject[] campFireImg;
  [SerializeField] private GameObject tailsImg;
  [SerializeField] private GameObject[] sparksImg;
  [SerializeField] private GameObject[] nimbusImg;
  [SerializeField] private GameObject[] oakImg;
  [SerializeField] private GameObject[] cottonImg;
  [SerializeField] private GameObject[] villageImg;
  [SerializeField] private GameObject[] riverImg;
  [SerializeField] private GameObject[] cityImg;
  #endregion

  // Start is called before the first frame update
  void Start()
  {
    gm = GameManager.Instance;
    HideBackground();

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
    bool gameOver = gm.isGameOver();

    if (gameOver) {campFireImg[1].SetActive(true); } else {campFireImg[0].SetActive(true); }

    if (gm.GetHasSparks()) {sparksImg[0].SetActive(true); } else { if (gameOver) { sparksImg[1].SetActive(true); } }
    if (gm.GetHasNimbus()) {nimbusImg[0].SetActive(true); } else { if (gameOver) { nimbusImg[1].SetActive(true); } }
    if (gm.GetHasOak()) {oakImg[0].SetActive(true); } else { if (gameOver) { oakImg[1].SetActive(true); } }
    if (gm.GetHasCotton()) {cottonImg[0].SetActive(true); } else { if (gameOver) {cottonImg[1].SetActive(true); } }

    if (i == 0) {villageImg[0].SetActive(true); } else { if (gm.isGameOver()) { villageImg[1].SetActive(true); } }
    if (i == 1) {riverImg[0].SetActive(true); } else { if (gm.isGameOver()) { riverImg[1].SetActive(true); } }
    if (i == 2) {cityImg[0].SetActive(true); } else { if (gm.isGameOver()) { cityImg[1].SetActive(true); } }

  }

  public void HideBackground() {
    for (int i = 0; i < 2; i++) {
      campFireImg[i].SetActive(false);
      sparksImg[i].SetActive(false);
      nimbusImg[i].SetActive(false);
      oakImg[i].SetActive(false);
      cottonImg[i].SetActive(false);
      villageImg[i].SetActive(false);
      riverImg[i].SetActive(false);
      cityImg[i].SetActive(false);
    }
  }

  public void switchSceneToDialogue()
  {
    GameManager.Instance.changeToNextDialogueScene();
  }
}
