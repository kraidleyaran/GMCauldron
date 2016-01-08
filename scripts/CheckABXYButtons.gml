///CheckABXYButtons(player)
var currentPlayer = argument0;
if (currentPlayer.CurrentAction == Action.Attack) return Action.Attack;
var AButton = keyboard_check_pressed(GetValueFromMap(currentPlayer.LocalControls, PlayerControl.A));
var BButton = keyboard_check_pressed(GetValueFromMap(currentPlayer.LocalControls, PlayerControl.B));
var XButton = keyboard_check_pressed(GetValueFromMap(currentPlayer.LocalControls, PlayerControl.X));
var YButton = keyboard_check_pressed(GetValueFromMap(currentPlayer.LocalControls, PlayerControl.Y));

if (AButton)
{
    var pair = GetValueFromMap(currentPlayer.ButtonActions, PlayerControl.A);
    
    var action = real(string_char_at(pair,1));
    var skill = real(string_char_at(pair,2));
    
    currentPlayer.CurrentAction = action;
    UseSkill(currentPlayer,skill);
    SetAnimationFromAction(currentPlayer,currentPlayer.CurrentAction);
    return true;
}
return false;
