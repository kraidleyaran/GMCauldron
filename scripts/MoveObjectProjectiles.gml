///MoveObjectProjectiles(object)
var currentObject = argument0;

var projLength = GetListLength(currentObject.Projectiles)

if (projLength > 0)
{
    for (i = 0; i < projLength; i+= 1)
    {
        var projectile = GetFromList(currentObject.Projectiles, i);
        MoveObject(projectile, projectile.CurrentDirection);
    }
}
