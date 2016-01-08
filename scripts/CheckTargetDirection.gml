///CheckTargetDirection(monster)
var monster = argument0;

var monsterX = monster.bbox_left - ((monster.bbox_right - monster.bbox_left) / 2)
var monsterY = monster.bbox_top - ((monster.bbox_bottom - monster.bbox_top) / 2);


var targetX = 0;
var targetY = 0;


with(monster.Target)
{
    targetX = bbox_left - ((bbox_right - bbox_left) / 2)
    targetY = bbox_top - ((bbox_bottom - bbox_top) / 2)
}
var currentDirection = Direction.None;

switch(targetY > monster.bbox_bottom)
{
    case true:
        currentDirection = Direction.South;
        break;
    case false:
        switch(targetY < monster.bbox_top)
        {
            case true:
                currentDirection = Direction.North;
                break;                
        }       
}
switch(targetX < monster.bbox_left)
{
    case true:
        switch(currentDirection)
        {
            case Direction.North:
                currentDirection = Direction.NorthWest;
                break;
            case Direction.South:
                currentDirection = Direction.SouthWest;
                break;
            default:
                currentDirection = Direction.West;
                break;
        }
        break;
    case false:
        switch(targetX > monster.bbox_right)
        {
            case true:
                switch(currentDirection)
                {
                    case Direction.North:
                        currentDirection = Direction.NorthEast;
                        break;
                    case Direction.South:
                        currentDirection = Direction.SouthEast;
                        break;
                    default:
                        currentDirection = Direction.East;
                }
                break;
        }
        break;
}
return currentDirection;
