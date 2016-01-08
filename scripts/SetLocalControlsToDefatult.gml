//SetLocalControlsToDefault(player)
var currentPlayer = argument0;
AddKeyValueToMap(currentPlayer.LocalControls, PlayerControl.Up,vk_up);
AddKeyValueToMap(currentPlayer.LocalControls, PlayerControl.Down,vk_down);
AddKeyValueToMap(currentPlayer.LocalControls, PlayerControl.Left,vk_left);
AddKeyValueToMap(currentPlayer.LocalControls, PlayerControl.Right,vk_right);
AddKeyValueToMap(currentPlayer.LocalControls, PlayerControl.A,ord('A'));

AddKeyValueToMap(currentPlayer.ButtonActions, PlayerControl.A, string(Action.Attack) + string(SkillName.SwingWoodSword));