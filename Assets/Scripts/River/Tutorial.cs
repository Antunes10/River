using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Tutorial : MonoBehaviour
{
    [SerializeField] private GameObject _tutorialPanel;
    [SerializeField] private Image _image;

    public void Init(Level levelData)
    {
		_tutorialPanel.SetActive(true);
		AudioManager.Instance.StopAllSounds();
        switch (levelData.dependance)
        {
            case Level.TutorialDependance.None:
                _image.sprite = levelData.tutorials[0];
                break;
			case Level.TutorialDependance.Nimbus:
                if (GameManager.Instance._gs.hasNimbus)
                {
					_image.sprite = levelData.tutorials[0];
				}
				else
				{
					Unpause();
				}
				break;
			case Level.TutorialDependance.Oak:
				if (GameManager.Instance._gs.hasOak)
				{
					_image.sprite = levelData.tutorials[0];
                }
                else
                {
					_image.sprite = levelData.tutorials[1];
				}
				break;
			case Level.TutorialDependance.Cotton:
				if (GameManager.Instance._gs.hasCotton)
				{
					_image.sprite = levelData.tutorials[0];
				}
				else
				{
					Unpause();
				}
				break;
		}
    }

    public void Unpause()
    {
		_tutorialPanel.SetActive(false);
		LevelManager.Instance.inTutorial = false;
		LevelManager.Instance.PauseUnpause();
		LevelManager.Instance.StartMusic();
    }

}
