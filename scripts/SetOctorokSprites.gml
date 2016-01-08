///SetOctorokSprites(enemy)
var currentEnemy = argument0;

SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.North), Red_Octorok_North);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.South), Red_Octorok_South);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.West), Red_Octorok_West);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.East), Red_Octorok_East);

SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.North), Red_Octorok_North);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.South), Red_Octorok_South);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.West), Red_Octorok_West);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.East), Red_Octorok_East);

SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.North), Red_Octorok_North);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.South), Red_Octorok_South);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.West), Red_Octorok_West);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.East), Red_Octorok_East);