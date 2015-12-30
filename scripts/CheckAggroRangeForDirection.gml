///CheckAggroRangeForDirection(object, direction, staticObjectType)
var currentObject = argument0;
var currentDirection = argument1;
var currentObjectType = argument2;

var nearestType = instance_nearest(currentObject.x, currentObject.y, currentObjectType);

var x1 = 0;
var y1 = 0;
var x2 = 0;
var y2 = 0;


switch (currentDirection)
{
    case Direction.North:
        x1 = currentObject.x;
        y1 = currentObject.y - (currentObject.AggroRange * Aggro.Height);
        x2 = currentObject.x + currentObject.sprite_width +  currentObject.AggroRange;
        y2 = currentObject.y;
        
        break;
    case Direction.South:
        x1 = currentObject.x;
        y1 = currentObject.y + currentObject.sprite_height;
        x2 = currentObject.x + currentObject.sprite_width;
        y2 = currentObject.y + currentObject.sprite_height + (currentObject.AggroRange * Aggro.Height);
        
        break;
    case Direction.East:
    
        x1 = currentObject.x + currentObject.sprite_width;
        y1 = currentObject.y;
        x2 = currentObject.x + currentObject.sprite_width + (currentObject.AggroRange * Aggro.Width);
        y2 = currentObject.y + currentObject.sprite_height;
        
        break;
    case Direction.West:
        x1 = currentObject.x;
        y1 = currentObject.y;
        x2 = currentObject.x + currentObject.sprite_width - (currentObject.AggroRange * Aggro.Width);
        y2 = currentObject.y + currentObject.sprite_height;
        
        break; 
        
}

if(point_in_rectangle(nearestType.x, nearestType.y, x1,y1,x2,y2) || point_in_rectangle(nearestType.x + sprite_width, nearestType.y + sprite_height, x1,y1,x2,y2))
{
    return true;
}
return false;