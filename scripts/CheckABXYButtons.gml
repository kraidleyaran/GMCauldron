///CheckABXYButtons(player)
var currentPlayer = argument0;
var AButton = keyboard_check_pressed(GetValueFromMap(currentPlayer.LocalControls, PlayerControl.A));
var BButton = keyboard_check_pressed(GetValueFromMap(currentPlayer.LocalControls, PlayerControl.B));
var XButton = keyboard_check_pressed(GetValueFromMap(currentPlayer.LocalControls, PlayerControl.X));
var YButton = keyboard_check_pressed(GetValueFromMap(currentPlayer.LocalControls, PlayerControl.Y));

if (AButton)
{
    currentPlayer.CurrentAction = GetValueFromMap(currentPlayer.ButtonActions, PlayerControl.A)
    SetAnimationFromAction(currentPlayer,currentPlayer.CurrentAction);
    return true;
}
return false;



