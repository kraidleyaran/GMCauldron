///CheckAttackDirection(enemy)
var currentEnemy = argument0;

if !(instance_exists(Player.object_index))
{
    return false;
} 
if (CheckAggroRangeForDirection(currentEnemy,Direction.North, Player.object_index) && (currentEnemy.CurrentDirection != Direction.South))
{
    currentEnemy.CurrentDirection = Direction.North;
    return true;
}

if (CheckAggroRangeForDirection(currentEnemy,Direction.South, Player.object_index) && (currentEnemy.CurrentDirection != Direction.North))
{
    currentEnemy.CurrentDirection = Direction.South;
    return true;
}

if  (CheckAggroRangeForDirection(currentEnemy,Direction.East, Player.object_index) && (currentEnemy.CurrentDirection != Direction.West))
{
    currentEnemy.CurrentDirection = Direction.East;
    return true;
}
if (CheckAggroRangeForDirection(currentEnemy,Direction.North, Player.object_index) && (currentEnemy.CurrentDirection != Direction.East))
{
    currentEnemy.CurrentDirection = Direction.West;   
    return true;
}
