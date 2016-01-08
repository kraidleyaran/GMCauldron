///SetLoopedObjectAnimation(object, animation, speed)
var currentObject = argument0;
var animationName = argument1;
if !(currentObject.CurrentAnimation == animationName)
{
    currentObject.CurrentAnimation = animationName;
    var currentAnimation = GetValueFromMap(currentObject.Animations, animationName);
    var currentSpeed = argument2;
    currentObject.sprite_index = currentAnimation;
    currentObject.image_speed = currentSpeed;
    currentObject.AnimationLooped = true;
}