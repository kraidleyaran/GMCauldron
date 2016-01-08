///GenerateSkillId(name,level, object, moveSpeed, attackSpeed, cooldown, maxFrames, enemyDamage, allyDamage, allyHealing, monsterAggro, knockback, stun, aoeRadius)
var name = argument0;
var level = argument1;
var object = argument2;
var moveSpeed = argument3;
var attackSpeed = argument4;
var cooldown = argument5;
var maxFrames = argument6;
var enemyDamage = argument7;
var allyDamage = argument8;
var allyHealing = argument9;
var monsterAggro = argument10;
var knockback = argument11;
var stun = argument12;
var aoeRadius = argument13;

var mapId = ds_map_create();

AddKeyValueToMap(mapId, Skill.Name, name);
AddKeyValueToMap(mapId, Skill.Level, level);
AddKeyValueToMap(mapId, Skill.AttackSpeed, attackSpeed);
AddKeyValueToMap(mapId, Skill.MoveSpeed, moveSpeed);
AddKeyValueToMap(mapId, Skill.Cooldown, cooldown);
AddKeyValueToMap(mapId, Skill.MaxFrames, maxFrames);
AddKeyValueToMap(mapId, Skill.EnemyDamage, enemyDamage);
AddKeyValueToMap(mapId, Skill.AllyDamage, allyDamage);
AddKeyValueToMap(mapId, Skill.AllyHealing, allyHealing);
AddKeyValueToMap(mapId, Skill.MonsterAggro, monsterAggro);
AddKeyValueToMap(mapId, Skill.Knockback, knockback);
AddKeyValueToMap(mapId, Skill.Stun, stun);
AddKeyValueToMap(mapId, Skill.AoeRadius, aoeRadius);
AddKeyValueToMap(mapId, Skill.Object, object);

return mapId;
