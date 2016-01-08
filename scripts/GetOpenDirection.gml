///GetOpenDirection(enemy)
var currentEnemy = argument0;

currentEnemy.CurrentDirection = CheckOpenDirection(currentEnemy, currentEnemy.CurrentDirection);
randomize();

currentEnemy.TotalSteps = irandom_range(50,100);
currentEnemy.CurrentSteps = 0;