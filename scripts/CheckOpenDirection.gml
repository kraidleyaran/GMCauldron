///CheckOpenDirection(enemy, direction)
var currentEnemy = argument0;
var currentDirection = argument1;

var directionArray = CreateArray();

directionArray = AddToArray(directionArray, Direction.None);

if !(place_meeting(currentEnemy.x,currentEnemy.y - currentEnemy.MoveSpeed, Terrain))
{
    directionArray = AddToArray(directionArray,Direction.North);
}
if !(place_meeting(currentEnemy.x,currentEnemy.y + currentEnemy.MoveSpeed, Terrain))
{
    directionArray = AddToArray(directionArray,Direction.South);
}
if !(place_meeting(currentEnemy.x + currentEnemy.MoveSpeed,currentEnemy.y ,Terrain))
{
    directionArray = AddToArray(directionArray,Direction.East);
}
if !(place_meeting(currentEnemy.x - currentEnemy.MoveSpeed,currentEnemy.y ,Terrain))
{
    directionArray = AddToArray(directionArray,Direction.West);
}

randomize();

var dirLength = array_length_1d(directionArray);
var setDirection = irandom_range(0, dirLength - 1);
var returnVar = directionArray[setDirection];
directionArray = 0;
return returnVar;