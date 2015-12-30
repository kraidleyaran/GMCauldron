///CheckCurrentAnimation(player)
var currentPlayer = argument0;
switch(currentPlayer.AnimationLooped)
{
    case true:
        return true;
        break;
    case false:
        if (currentPlayer.image_index > image_number - 1)
        {
            if (currentPlayer.PlayCount > currentPlayer.MaxPlayCount)
            {
                currentPlayer.PlayCount = 0;
                currentPlayer.MaxPlayCount = 0;
                currentPlayer.CurrentAction = currentPlayer.DefaultAction;
                SetAnimationFromAction(currentPlayer, currentPlayer.CurrentAction);
                return false;
            }
            currentPlayer.PlayCount += 1;
        }
        return false; 
        break;
}
