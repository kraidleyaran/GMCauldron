///CheckPlayerKeyPress(player)
var currentPlayer = argument0;

CheckABXYButtons(currentPlayer)
if (currentPlayer.CurrentAction == Action.Attack) return Action.Attack;

if (currentPlayer.CurrentStepFrame < currentPlayer.StepFrames)
{
    currentPlayer.CurrentStepFrame += 1;
    return Action.Attack;
} 
if (CheckMoveKeys(currentPlayer))
{
    currentPlayer.CurrentAction = Action.Move;
    SetAnimationFromAction(currentPlayer, currentPlayer.CurrentAction)
    return Action.Move;
}
currentPlayer.CurrentAction = Action.Stand;
currentPlayer.MovingDirection = Direction.None;
SetAnimationFromAction(currentPlayer, currentPlayer.CurrentAction)
return Action.Stand;