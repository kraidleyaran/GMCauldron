///MoveEnemy(enemy)
var currentEnemy = argument0;
//self = currentEnemy;
if (currentEnemy.CurrentAction == Action.Attack)
{
    return false;
}
currentEnemy.CurrentAction = Action.Move;
if (currentEnemy.CurrentSteps >= currentEnemy.TotalSteps)
{
    GetOpenDirection(currentEnemy);
}
if (currentEnemy.CurrentDirection != Direction.None)
{
    MoveObject(currentEnemy, currentEnemy.CurrentDirection);
}
currentEnemy.CurrentSteps += 1;