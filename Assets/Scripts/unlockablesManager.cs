using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class unlockablesManager : MonoBehaviour
{

    //images
    public Sprite[] images;
    // ui images
    public Image uiImage1;
    public Image uiImage2;
    public Image uiImage3;
    public Image uiImage4;
    public Image uiImageBig;

    public Button nextButton;
    public Button previousButton;

    int index = 0;
    int currIndex = 0;

    void Start()
    {
        uiImageBig.gameObject.SetActive(false);
        previousButton.gameObject.SetActive(false);

        uiImage1.GetComponent<Image>().sprite = images[0];
        uiImage2.GetComponent<Image>().sprite = images[1];
        uiImage3.GetComponent<Image>().sprite = images[2];
        uiImage4.GetComponent<Image>().sprite = images[3];

        index = 4;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            uiImageBig.gameObject.SetActive(false);
        }
    }

    public void nextPage()
    {
        if (uiImageBig.gameObject.activeSelf)
        {
            uiImageBig.GetComponent<Image>().sprite = images[currIndex + 1];
            currIndex++;

            if (currIndex != 0) previousButton.gameObject.SetActive(true);
            if (currIndex == images.Length - 1) nextButton.gameObject.SetActive(false);

            return;
        }

        if (index == images.Length) return;

        previousButton.gameObject.SetActive(true);

        uiImage1.GetComponent<Image>().sprite = images[index];
        uiImage2.GetComponent<Image>().sprite = images[index + 1];
        uiImage3.GetComponent<Image>().sprite = images[index + 2];
        uiImage4.GetComponent<Image>().sprite = images[index + 3];

        index += 4;

        if (index == images.Length) nextButton.gameObject.SetActive(false);
    }

    public void previousPage()
    {
        if (uiImageBig.gameObject.activeSelf)
        {

            uiImageBig.GetComponent<Image>().sprite = images[currIndex - 1];
            currIndex--;

            if (currIndex != images.Length - 1) nextButton.gameObject.SetActive(true);
            if (currIndex == 0) previousButton.gameObject.SetActive(false);

            return;
        }

        if (index == 4) return;

        nextButton.gameObject.SetActive(true);

        uiImage1.GetComponent<Image>().sprite = images[index - 8];
        uiImage2.GetComponent<Image>().sprite = images[index - 7];
        uiImage3.GetComponent<Image>().sprite = images[index - 6];
        uiImage4.GetComponent<Image>().sprite = images[index - 5];

        index -= 4;

        if (index == 4) previousButton.gameObject.SetActive(false);
    }

    public void showBigImage(Image img)
    {
        uiImageBig.gameObject.SetActive(true);
        uiImageBig.GetComponent<Image>().sprite = img.sprite;

        //find index of image
        for (int i = 0; i < images.Length; i++)
        {
            if (img.sprite == images[i])
            {
                currIndex = i;
                break;
            }
        }

        if (currIndex != 0) previousButton.gameObject.SetActive(true);
        if (currIndex == images.Length - 1) nextButton.gameObject.SetActive(false);
    }

    public void hideBigImage()
    {
        uiImageBig.gameObject.SetActive(false);
    }
}
