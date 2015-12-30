///GenerateDefaultEnemyProperties(enemy)
var currentEnemy = argument0;

currentEnemy.CurrentType = ObjectType.Monster;
currentEnemy.SpriteType = SpriteType.Octorok;
currentEnemy.AggroRange = 8;
currentEnemy.TotalSteps = 0;
currentEnemy.CurrentSteps = 0;

SetOctorokSprites(currentEnemy);
SetLoopedObjectAnimation(currentEnemy, GetAnimationName(Animation.Stand, currentEnemy.CurrentDirection),6);