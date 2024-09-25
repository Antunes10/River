using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class StatDisplayer : MonoBehaviour
{
  [SerializeField] private TextMeshProUGUI foodText;
  [SerializeField] private TextMeshProUGUI hopeText;
  [SerializeField] private TextMeshProUGUI dayText;
  [SerializeField] private TextMeshProUGUI food;
  [SerializeField] private TextMeshProUGUI hope;
  [SerializeField] public GameObject Button;
  [SerializeField] public GameObject ButtonGameOver;
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
    int i = GameManager.Instance.GetCurrentInk();
    
    if (i == 4) {
        dayText.text = "End of Day 1";
        BackgroundChanger(0);
    }
    else if (i == 7) {
        dayText.text = "End of Day 2";
        BackgroundChanger(1);
    }
    else if (i == 10) {
        dayText.text = "End of Day 3";
        BackgroundChanger(2);
    }
    else {
      dayText.text = "game over";
      if (i <= 4) {BackgroundChanger(0); }
      else if (i > 4 && i <= 7) {BackgroundChanger(1); }
      else if (i > 7) {BackgroundChanger(2); }
    } 

    

    if (gm.isGameOver()) { setupGameOver(); }

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
      if (gm.isGameOver()) {
        ButtonGameOver.SetActive(true);
      } else {
        Button.SetActive(true);
      }
  }

  // Update is called once per frame
  void Update()
  {

  }

  private void setupGameOver() {
    dayText.text = "game over";
    foodText.gameObject.SetActive(false);
    hopeText.gameObject.SetActive(false);
    food.gameObject.SetActive(false);
    hope.gameObject.SetActive(false);
  }

  public void BackgroundChanger(int i) {
    bool gameOver = gm.isGameOver();

    if (gameOver) {campFireImg[1].SetActive(true); } else {campFireImg[0].SetActive(true); }

    if (!gameOver) { tailsImg.SetActive(true); }

    if (gm.GetHasSparks()) {
      if (gameOver) { sparksImg[1].SetActive(true); } 
      else {sparksImg[0].SetActive(true);}
    } 
    if (gm.GetHasNimbus()) {
      if (gameOver) { nimbusImg[1].SetActive(true); } 
      else {nimbusImg[0].SetActive(true);}
    } 
    if (gm.GetHasOak()) {
      if (gameOver) { oakImg[1].SetActive(true); } 
      else {oakImg[0].SetActive(true);}
    } 
    if (gm.GetHasCotton()) {
      if (gameOver) { cottonImg[1].SetActive(true); } 
      else {cottonImg[0].SetActive(true);}
    } 

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

  public void switchScene() {
    if (gm.isGameOver()) {
      GameManager.Instance.changeToMenuScene();
    } else {
      GameManager.Instance.changeToNextDialogueScene();
    }
  }
}
