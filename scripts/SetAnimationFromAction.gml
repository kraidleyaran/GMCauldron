///SetAnimationFromAction(player, action)
var currentPlayer = argument0;
var currentAction = argument1;

switch(currentAction)
{
    case Action.Stand:
        SetLoopedObjectAnimation(currentPlayer, GetAnimationName(Animation.Stand, currentPlayer.CurrentDirection), currentPlayer.DefaultFrameSpeed);
        break;
    case Action.Move:
        SetLoopedObjectAnimation(currentPlayer, GetAnimationName(Animation.Move, currentPlayer.CurrentDirection),currentPlayer.DefaultFrameSpeed);
        break;
    case Action.Swing:
        SetObjectAnimation(currentPlayer, GetAnimationName(Animation.Swing, currentPlayer.CurrentDirection),currentPlayer.DefaultFrameSpeed,currentPlayer.AttackSpeed);
        break;
        
}