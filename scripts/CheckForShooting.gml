///CheckForShooting(object)
var currentObject = argument0;

currentObject.ShootFrame += 1;
if (currentObject.ShootFrame >= currentObject.FramesBetweenShots)
{
    currentObject.ShootFrame = 0;
    currentObject.ShootCooldown = false;
}