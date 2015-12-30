///SetOctorokSprites(enemy)
var currentEnemy = argument0;

AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.North), Red_Octorok_North);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.South), Red_Octorok_South);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.West), Red_Octorok_West);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.East), Red_Octorok_East);

AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.North), Red_Octorok_North);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.South), Red_Octorok_South);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.West), Red_Octorok_West);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.East), Red_Octorok_East);

AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Swing, Direction.North), Red_Octorok_North);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Swing, Direction.South), Red_Octorok_South);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Swing, Direction.West), Red_Octorok_West);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Swing, Direction.East), Red_Octorok_East);