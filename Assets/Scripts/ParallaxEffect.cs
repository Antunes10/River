using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParallaxEffect : MonoBehaviour
{
    [SerializeField] private bool _loop;
    [SerializeField] private float _speed;
    [SerializeField] private Camera _camera;

    private bool _isLastCreated;
    private bool _isMovingBack;
    private Vector3 lastCamPosition;
    private Sprite _sprite;
    private Texture2D texture;
    private float textureUnitSizeX;
    private float sizeMultiplier;


    void Start()
    {
        lastCamPosition = _camera.transform.position;

        if (_loop)
        {
            _sprite = GetComponent<SpriteRenderer>().sprite;
            texture = _sprite.texture;
            textureUnitSizeX = texture.width / _sprite.pixelsPerUnit;
            sizeMultiplier = Mathf.Abs(transform.localScale.x);
        }

        if (_speed > 0)
        {
            _isMovingBack = false;
        }
        else
        {
            _isMovingBack = true;
        }
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        var camPosition = _camera.transform.position;
        var deltaMovement = camPosition - lastCamPosition;
        transform.position += new Vector3(deltaMovement.x * _speed, 0);
        lastCamPosition = camPosition;

        if (_loop)
        {
            if (transform.position.x - camPosition.x <= 0 && !_isLastCreated)
            {
                var nextImage = Instantiate(gameObject);
                nextImage.transform.parent = transform.parent;
                nextImage.transform.localPosition =
                    transform.localPosition + new Vector3(textureUnitSizeX * transform.localScale.x, 0, 0);
                nextImage.GetComponent<ParallaxEffect>()._speed = _speed;
                _isLastCreated = true;
            }
            else if (camPosition.x - 
                transform.position.x >= textureUnitSizeX * sizeMultiplier && _isLastCreated)
            {
                Destroy(gameObject);
            }
        }
    }
}
