using System.Collections;
using System.Collections.Generic;
using UnityEngine;
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

    public Button nextButton;
    public Button previousButton;

    int index = 0;

    void Start()
    {
        previousButton.gameObject.SetActive(false);

        uiImage1.GetComponent<Image>().sprite = images[0];
        uiImage2.GetComponent<Image>().sprite = images[1];
        uiImage3.GetComponent<Image>().sprite = images[2];
        uiImage4.GetComponent<Image>().sprite = images[3];

        index = 4;
    }

    void Update()
    {

    }

    public void nextPage()
    {
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
        if (index == 4) return;

        nextButton.gameObject.SetActive(true);

        uiImage1.GetComponent<Image>().sprite = images[index - 8];
        uiImage2.GetComponent<Image>().sprite = images[index - 7];
        uiImage3.GetComponent<Image>().sprite = images[index - 6];
        uiImage4.GetComponent<Image>().sprite = images[index - 5];

        index -= 4;

        if (index == 4) previousButton.gameObject.SetActive(false);
    }
}
