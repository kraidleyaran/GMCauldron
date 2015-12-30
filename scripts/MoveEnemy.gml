///MoveEnemy(enemy)
var currentEnemy = argument0;
//self = currentEnemy;
if (currentEnemy.CurrentAction == Action.Swing)
{
    return false;
}
currentEnemy.CurrentAction = Action.Move;
if (currentEnemy.CurrentSteps >= currentEnemy.TotalSteps)
{
    GetOpenDirection(currentEnemy);
}

switch(currentEnemy.CurrentDirection)
{
    case Direction.North:
        if (place_free(currentEnemy.x,currentEnemy.y - currentEnemy.MoveSpeed))
        {
            MoveObject(currentEnemy, currentEnemy.CurrentDirection);
        }
        break;
    case Direction.South:
        if (place_free(currentEnemy.x,currentEnemy.y + currentEnemy.MoveSpeed + sprite_get_height(currentEnemy.sprite_index)))
        {
            MoveObject(currentEnemy, currentEnemy.CurrentDirection);
        }
        break;
    case Direction.East:
        if (place_free(currentEnemy.x + currentEnemy.MoveSpeed + sprite_get_width(currentEnemy.sprite_index),currentEnemy.y))
        {
            MoveObject(currentEnemy, currentEnemy.CurrentDirection);
        }
        break;
    case Direction.West:
        if (place_free(currentEnemy.x - currentEnemy.MoveSpeed,currentEnemy.y))
        {
            MoveObject(currentEnemy, currentEnemy.CurrentDirection);
        }
        break;
}
currentEnemy.CurrentSteps += 1;