///GenerateEnemyProperties(enemy)
var currentEnemy = argument0;
currentEnemy.AttackSpeed = 4;
currentEnemy.TotalSteps = 0;
currentEnemy.CurrentSteps = 0;
currentEnemy.CurrentEnemyType = MonsterType.Default;
currentEnemy.CurrentType = ObjectType.Monster;
currentEnemy.Health = 20;
currentEnemy.Alignment = Alignment.Monster;
currentEnemy.MonsterType = MonsterType.Default;

// Aggro stuff
currentEnemy.AggroRange = 0;
currentEnemy.AggroList = ds_map_create();
currentEnemy.LeashRange = 1;
currentEnemy.LeashList = CreateNewList();
currentEnemy.Aggrod = false;
currentEnemy.Target = noone;
currentEnemy.TargetAggro = 0;