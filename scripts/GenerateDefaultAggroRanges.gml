///GenerateDefautlAggroRanges(enemy)
var currentEnemy = argument0;

AddKeyValueToMap(currentEnemy.AggroRange, RelativeSide.Front, 6);
AddKeyValueToMap(currentEnemy.AggroRange, RelativeSide.Left, 6);
AddKeyValueToMap(currentEnemy.AggroRange, RelativeSide.Right, 6);
AddKeyValueToMap(currentEnemy.AggroRange, RelativeSide.Back, 0);