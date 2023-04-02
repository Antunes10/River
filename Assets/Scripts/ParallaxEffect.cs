using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParallaxEffect : MonoBehaviour
{
    [SerializeField] private bool _loop;
    [SerializeField] private float _speed;
    [SerializeField] private Camera _camera;

    private bool _isLastCreated;
    private Sprite _sprite;
    private Texture2D texture;
    private float textureUnitSizeX;
    private float sizeMultiplier;

    public bool _isRipples;
    public bool _goingRight;


    void Start()
    {
        if (_loop)
        {
            _sprite = GetComponent<SpriteRenderer>().sprite;
            texture = _sprite.texture;
            textureUnitSizeX = texture.width / _sprite.pixelsPerUnit;
            sizeMultiplier = Mathf.Abs(transform.localScale.x);
        }
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        transform.position -= new Vector3(_speed, 0);

        if (_loop && !_goingRight)
        {
            if (transform.position.x <= 0 && !_isLastCreated)
            {
                var nextImage = Instantiate(gameObject);
                nextImage.transform.parent = transform.parent;
                nextImage.transform.localPosition =
                    transform.localPosition + new Vector3(textureUnitSizeX * transform.localScale.x, 0, 0);
                nextImage.GetComponent<ParallaxEffect>()._speed = _speed;
                _isLastCreated = true;
            }
            else if (transform.position.x <= - textureUnitSizeX * sizeMultiplier && _isLastCreated)
            {
                Destroy(gameObject);
            }
        }
        else if(_loop && _goingRight)
        {
            if (transform.position.x >= 1 && !_isLastCreated)
            {
                var nextImage = Instantiate(gameObject);
                nextImage.transform.parent = transform.parent;
                nextImage.transform.localPosition =
                    transform.localPosition - new Vector3(textureUnitSizeX * transform.localScale.x, 0, 0);
                nextImage.GetComponent<ParallaxEffect>()._speed = _speed;
                _isLastCreated = true;
            }
            else if (transform.position.x >= textureUnitSizeX * sizeMultiplier && _isLastCreated)
            {
                Destroy(gameObject);
            }
        }
    }

    private void OnDisable()
    {
        if (_isRipples)
        {
            transform.position = new Vector2(0, -4.04f);
        }
    }
}
