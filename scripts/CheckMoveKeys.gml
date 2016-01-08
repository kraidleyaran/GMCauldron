///CheckMoveKeys(player)
var currentPlayer = argument0;

var upKey = keyboard_check(ds_map_find_value(currentPlayer.LocalControls, PlayerControl.Up));
var downKey = keyboard_check(ds_map_find_value(currentPlayer.LocalControls,PlayerControl.Down));
var leftKey = keyboard_check(ds_map_find_value(currentPlayer.LocalControls, PlayerControl.Left));
var rightKey = keyboard_check(ds_map_find_value(currentPlayer.LocalControls, PlayerControl.Right));

if (leftKey)
{
    currentPlayer.CurrentDirection = Direction.West;
}
if (rightKey)
{
    currentPlayer.CurrentDirection = Direction.East;
}
if (upKey)
{
    currentPlayer.CurrentDirection = Direction.North;
}
if (downKey)
{
    currentPlayer.CurrentDirection = Direction.South;
}


var moveKeys = (upKey) || (downKey) || (leftKey) || (rightKey);
return moveKeys;