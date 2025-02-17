using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class StatDisplayer : MonoBehaviour
{
	[SerializeField] private TextMeshProUGUI foodText;
	[SerializeField] private TextMeshProUGUI hopeText;
	[SerializeField] private TextMeshProUGUI dayText;
	[SerializeField] public TextMeshProUGUI Button;
	GameManager gm;

	#region Menus Variables
	[Header("Images")]
	[SerializeField] private Image foodPaw;
	[SerializeField] private Image hopePaw;
	[SerializeField] private Image backgroundImg;
	[SerializeField] private Image campFireImg;
	[SerializeField] private Image tailsImg;
	[SerializeField] private Image sparksImg;
	[SerializeField] private Image nimbusImg;
	[SerializeField] private Image oakImg;
	[SerializeField] private Image cottonImg;

	[SerializeField] private Sprite[] pawSprites;
	[SerializeField] private Sprite[] backgroundSprites;
	[SerializeField] private Sprite[] campFireSprites;
	[SerializeField] private Sprite[] tailsSprites;
	[SerializeField] private Sprite[] sparksSprites;
	[SerializeField] private Sprite[] nimbusSprites;
	[SerializeField] private Sprite[] oakSprites;
	[SerializeField] private Sprite[] cottonSprites;
	#endregion

	// Start is called before the first frame update
	void Start()
	{
		gm = GameManager.Instance;
		ImageInit();
	}

	private void setupGameOver()
	{
		dayText.text = "Game Over";
		Button.text = "Back to Main Menu";
	}

	public void ImageInit()
	{
		int gameOver = gm.isGameOver() ? 1 : 0;
		int i = GameManager.Instance.getDay();
		int numberChar = 1;

		//Base
		dayText.text = gm.isGameOver() ? "Game Over" : "End of Day " + i;
		Button.text = gm.isGameOver() ? "Back to Main Menu" : "Keep going...";
		campFireImg.sprite = campFireSprites[gameOver];
		tailsImg.sprite = tailsSprites[gameOver];

		//Characters
		if (gm.GetHasSparks()) { sparksImg.enabled = true; sparksImg.sprite = sparksSprites[gameOver]; numberChar++; }
		if (gm.GetHasNimbus()) { nimbusImg.enabled = true; nimbusImg.sprite = nimbusSprites[gameOver]; numberChar++; }
		if (gm.GetHasOak()) { oakImg.enabled = true; oakImg.sprite = oakSprites[gameOver]; numberChar++; }
		if (gm.GetHasCotton()) { cottonImg.enabled = true; cottonImg.sprite = cottonSprites[gameOver]; numberChar++; }

		//Background
		if (i == 1) { backgroundImg.sprite = gm.isGameOver() ? backgroundSprites[0] : backgroundSprites[1]; }
		if (i == 2) { backgroundImg.sprite = gm.isGameOver() ? backgroundSprites[0] : backgroundSprites[1]; }
		if (i == 3) { backgroundImg.sprite = gm.isGameOver() ? backgroundSprites[0] : backgroundSprites[1]; }

		//Indicators
		int totalFoodDays = gm.getFood() / numberChar;
		int hopeLevel = Math.Clamp(gm.getHope(), 0, 3) +1;
		foodPaw.sprite = pawSprites[totalFoodDays];
		hopePaw.sprite = pawSprites[hopeLevel -1];
		foodText.text = gm.getFood().ToString();
		hopeText.text = hopeLevel.ToString();
	}

	public void switchScene()
	{
		if (gm.isGameOver())
		{
			GameManager.Instance.changeToMenuScene();
		}
		else
		{
			GameManager.Instance.changeToNextDialogueScene();
		}
	}
}
