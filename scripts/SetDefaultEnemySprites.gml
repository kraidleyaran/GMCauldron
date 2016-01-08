///SetDefaultEnemySprites(enemy)
var currentEnemy = argument0;

AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.North), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.South), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.West), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.East), EnemySprite);

AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.North), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.South), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.West), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.East), EnemySprite);

AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.North), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.South), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.West), EnemySprite);
AddKeyValueToMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.East), EnemySprite);