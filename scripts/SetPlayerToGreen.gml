///SetPlayerToGreen(player)

var player = argument0;

SetKeyOfMap(player.Animations, GetAnimationName(Animation.Move, Direction.North), Link_Green_Walk_North);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Move, Direction.South), Link_Green_Walk_South);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Move, Direction.West), Link_Green_Walk_West);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Move, Direction.East), Link_Green_Walk_East);

SetKeyOfMap(player.Animations, GetAnimationName(Animation.Stand, Direction.North), Link_Green_Standing_North);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Stand, Direction.South), Link_Green_Standing_South);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Stand, Direction.West), Link_Green_Standing_West);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Stand, Direction.East), Link_Green_Standing_East);

SetKeyOfMap(player.Animations, GetAnimationName(Animation.Forward, Direction.North), Link_Green_Swing_North);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Forward, Direction.South), Link_Green_Swing_South);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Forward, Direction.West), Link_Green_Swing_West);
SetKeyOfMap(player.Animations, GetAnimationName(Animation.Forward, Direction.East), Link_Green_Swing_East);