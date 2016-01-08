///MoveObject(object, direction)
var currentObject = argument0;
var currentDirection = argument1;

currentObject.CurrentDirection = currentDirection;
currentObject.MovingDirection = currentDirection;

switch(currentDirection)
{
    case Direction.North:
        currentObject.y -= currentObject.MoveSpeed;
        break;
    case Direction.South:
        currentObject.y += currentObject.MoveSpeed;
        break;
    case Direction.East:
        currentObject.x += currentObject.MoveSpeed;
        break;
    case Direction.West:
        currentObject.x -= currentObject.MoveSpeed;
        break; 
    case Direction.None:
        break;      
}