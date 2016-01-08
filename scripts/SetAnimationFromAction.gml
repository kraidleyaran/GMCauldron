///SetAnimationFromAction(player, action)
var currentPlayer = argument0;
var currentAction = argument1;
if (currentPlayer.CurrentDirection == Direction.None)
{
    return false;
}
switch(currentAction)
{
    case Action.Stand:
        SetLoopedObjectAnimation(currentPlayer, GetAnimationName(Animation.Stand, currentPlayer.CurrentDirection), currentPlayer.DefaultFrameSpeed);
        break;
    case Action.Move:
        SetLoopedObjectAnimation(currentPlayer, GetAnimationName(Animation.Move, currentPlayer.CurrentDirection),currentPlayer.DefaultFrameSpeed);
        break;
    case Action.Attack:
        SetObjectAnimation(currentPlayer, GetAnimationName(Animation.Forward, currentPlayer.CurrentDirection),currentPlayer.DefaultFrameSpeed, currentPlayer.AttackSpeed);
        break;
        
}