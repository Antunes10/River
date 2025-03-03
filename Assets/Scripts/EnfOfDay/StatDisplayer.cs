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
	[SerializeField] private Canvas _tutorialCanvas;
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
		CheckTutorial();
	}

	public void ImageInit()
	{
		int gameOver = gm._gs.gameOver ? 1 : 0;
		int i = GameManager.Instance._gs.day;
		int numberChar = 1;

		//Base
		dayText.text = gm._gs.gameOver ? "Game Over" : "End of Day " + i;
		Button.text = gm._gs.gameOver ? "Back to Main Menu" : "Keep going...";
		campFireImg.sprite = campFireSprites[gameOver];
		tailsImg.sprite = tailsSprites[gameOver];

		//Characters
		if (gm._gs.hasSparks) { sparksImg.enabled = true; sparksImg.sprite = sparksSprites[gameOver]; numberChar++; }
		if (gm._gs.hasNimbus) { nimbusImg.enabled = true; nimbusImg.sprite = nimbusSprites[gameOver]; numberChar++; }
		if (gm._gs.hasOak) { oakImg.enabled = true; oakImg.sprite = oakSprites[gameOver]; numberChar++; }
		if (gm._gs.hasCotton) { cottonImg.enabled = true; cottonImg.sprite = cottonSprites[gameOver]; numberChar++; }

		//Background
		if (i == 1 || i == 3) { backgroundImg.sprite = gm._gs.gameOver ? backgroundSprites[0] : backgroundSprites[1]; }
		if (i == 2) { backgroundImg.sprite = gm._gs.gameOver ? backgroundSprites[2] : backgroundSprites[3]; }
		if (i == 4 || i == 5) { backgroundImg.sprite = gm._gs.gameOver ? backgroundSprites[4] : backgroundSprites[5]; }

		//Indicators
		int totalFoodDays = gm._gs.currentFood / numberChar;
		int hopeLevel = gm._gs.currentHope;
		foodPaw.sprite = pawSprites[Math.Clamp(totalFoodDays-1, 0, 3)];
		hopePaw.sprite = pawSprites[Math.Clamp(hopeLevel-1, 0, 3)];
		foodText.text = gm._gs.currentFood.ToString();
		hopeText.text = hopeLevel.ToString();
	}

	public void CheckTutorial()
	{
		if(GameManager.Instance._gs.day == 1)
		{
			_tutorialCanvas.enabled = true;
		}
	}

	public void CloseTutorial()
	{
		_tutorialCanvas.enabled = false;
	}

	public void switchScene()
	{
		if (gm._gs.gameOver)
		{
			GameManager.Instance.changeToMenuScene();
		}
		else
		{
			GameManager.Instance.loadDialogueScene(1);
		}
	}
}
