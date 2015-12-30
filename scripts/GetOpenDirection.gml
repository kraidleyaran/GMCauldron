///GetOpenDirection(enemy)
var currentEnemy = argument0;

currentEnemy.CurrentDirection = CheckOpenDirection(currentEnemy, currentEnemy.CurrentDirection);
randomize();

currentEnemy.TotalSteps = irandom_range(10,15);
currentEnemy.CurrentSteps = 0;