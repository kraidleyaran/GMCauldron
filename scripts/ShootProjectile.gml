///ShootProjectile(object, projectileType)
var currentObject = argument0;
var currentProjType = argument1;
if (currentObject.CurrentAction != Action.Swing)
{
    currentObject.CurrentAction = Action.Swing
}
else
{
    return true;
}

var projX = 0;
var projY = 0;
var currentDirection = Direction.North;
switch(currentObject.SpriteType)
{
    case SpriteType.Octorok:
        switch (currentObject.CurrentDirection)
        {
            case Direction.North:
                projX = currentObject.x + OctorokProjectile.NorthX;
                projY = currentObject.y + OctorokProjectile.NorthY;
                currentDirection = Direction.North;
                break;
            case Direction.South:
                projX = currentObject.x + OctorokProjectile.SouthX;
                projY = currentObject.y + OctorokProjectile.SouthY;
                currentDirection = Direction.South;
                break;
            case Direction.East:
                projX = currentObject.x + OctorokProjectile.EastX;
                projY = currentObject.y + OctorokProjectile.EastY;
                currentDirection = Direction.East;
                break;
            case Direction.West:
                projX = currentObject.x + OctorokProjectile.WestX;
                projY = currentObject.y + OctorokProjectile.WestY;
                currentDirection = Direction.West;
                break;
        }
        break;   
}



switch(currentProjType)
{
    case ProjectileType.Octorokshell:
        with(instance_create(projX, projY, OctorokShell_FromSide))
        {
            CurrentDirection = currentDirection;
        }
        break;
}
