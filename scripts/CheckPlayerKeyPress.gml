///CheckPlayerKeyPress(player)
var currentPlayer = argument0;

CheckABXYButtons(currentPlayer)
if (currentPlayer.CurrentAction == Action.Swing) return Action.Swing;
if (CheckMoveKeys(currentPlayer))
{
    currentPlayer.CurrentAction = Action.Move;
    SetAnimationFromAction(currentPlayer, currentPlayer.CurrentAction)
    return Action.Move;
}
currentPlayer.CurrentAction = Action.Stand;
SetAnimationFromAction(currentPlayer, currentPlayer.CurrentAction)
return Action.Stand;
