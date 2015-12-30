///SetObjectAnimation(object, animation, speed, playCount)
var currentObject = argument0;
var animationName = argument1;
var currentPlayCount = argument3;

currentObject.MaxPlayCount = currentPlayCount;
currentObject.AnimationLooped = false;
if !(currentObject.CurrentAnimation == animationName)
{
    currentObject.CurrentAnimation = animationName;
    var currentAnimation = GetValueFromMap(currentObject.Animations, animationName);
    var currentSpeed = argument2;
    currentObject.sprite_index = currentAnimation;
    currentObject.image_speed = currentSpeed;
}