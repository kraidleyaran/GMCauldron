///CheckOpenDirection(enemy, direction)
var currentEnemy = argument0;
var currentDirection = argument1;

var directionArray = CreateArray();

if (place_free(currentEnemy.x,currentEnemy.y - currentEnemy.MoveSpeed))
{
    directionArray = AddToArray(directionArray,Direction.North);
}
if (place_free(currentEnemy.x,currentEnemy.y + currentEnemy.MoveSpeed + sprite_get_height(currentEnemy.sprite_index)))
{
    directionArray = AddToArray(directionArray,Direction.South);
}
if (place_free(currentEnemy.x + currentEnemy.MoveSpeed + sprite_get_width(currentEnemy.sprite_index),currentEnemy.y))
{
    directionArray = AddToArray(directionArray,Direction.East);
}
if (place_free(currentEnemy.x - currentEnemy.MoveSpeed,currentEnemy.y))
{
    directionArray = AddToArray(directionArray,Direction.West);
}

randomize();

var setDirection = irandom_range(0, array_length_1d(directionArray) - 1);
var returnVar = directionArray[setDirection];
directionArray = 0;
return returnVar;

