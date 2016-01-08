///CheckAttackDirection(enemy)
if !(instance_exists(Player.object_index))
{
    return false;
}

var currentEnemy = argument0;

var northAggro;
var eastAggro;
var westAggro;
var southAggro;

frontAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Front);
leftAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Left);
rightAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Right);
backAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Back);

switch (currentEnemy.CurrentDirection)
{
    case Direction.North:
        northAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Front);
        westAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Left);
        eastAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Right);
        southAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Back);
        break;
    case Direction.South:
        southAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Front);
        eastAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Left);
        westAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Right);
        northAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Back);
        break;
    case Direction.East:
        eastAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Front);
        northAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Left);
        southAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Right);
        westAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Back);
        break;
    case Direction.West:
        westAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Front);
        southAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Left);
        northAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Right);
        eastAggro = GetValueFromMap(currentEnemy.AggroRange, RelativeSide.Back);
        break;
}

if (CheckAggroRangeForDirection(currentEnemy,Direction.North, northAggro, Player.object_index) && (currentEnemy.CurrentDirection != Direction.South))
{
    currentEnemy.CurrentDirection = Direction.North;
    return true;
}

if (CheckAggroRangeForDirection(currentEnemy,Direction.South, southAggro, Player.object_index) && (currentEnemy.CurrentDirection != Direction.North))
{
    currentEnemy.CurrentDirection = Direction.South;
    return true;
}

if  (CheckAggroRangeForDirection(currentEnemy,Direction.East, eastAggro, Player.object_index) && (currentEnemy.CurrentDirection != Direction.West))
{
    currentEnemy.CurrentDirection = Direction.East;
    return true;
}
if (CheckAggroRangeForDirection(currentEnemy,Direction.West, westAggro, Player.object_index) && (currentEnemy.CurrentDirection != Direction.East))
{
    currentEnemy.CurrentDirection = Direction.West;   
    return true;
}