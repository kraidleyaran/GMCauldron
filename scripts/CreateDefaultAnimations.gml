///CreateDefaultAnimations(player)
var currentPlayer = argument0;
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Move, Direction.North), Link_Walk_North);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Move, Direction.South), Link_Walk_South);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Move, Direction.West), Link_Walk_West);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Move, Direction.East), Link_Walk_East);

AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Stand, Direction.North), Link_Standing_North);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Stand, Direction.South), Link_Standing_South);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Stand, Direction.West), Link_Standing_West);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Stand, Direction.East), Link_Standing_East);

AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Swing, Direction.North), Link_Swing_North);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Swing, Direction.South), Link_Swing_South);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Swing, Direction.West), Link_Swing_West);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Swing, Direction.East), Link_Swing_East);