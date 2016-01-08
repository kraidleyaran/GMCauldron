///CreateDefaultAnimations(player)
var currentPlayer = argument0;
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Move, Direction.North), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Move, Direction.South), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Move, Direction.West), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Move, Direction.East), PlayerSprite);

AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Stand, Direction.North), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Stand, Direction.South), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Stand, Direction.West), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Stand, Direction.East), PlayerSprite);

AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Forward, Direction.North), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Forward, Direction.South), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Forward, Direction.West), PlayerSprite);
AddKeyValueToMap(currentPlayer.Animations, GetAnimationName(Animation.Forward, Direction.East), PlayerSprite);