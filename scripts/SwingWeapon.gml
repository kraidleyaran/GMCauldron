///SwingWeapon(object, weapon,enemyDamage, allyDamage, allyHeal, monsterAggro, knockback, stun, aoeRadius)

var object = argument0;
var weapon = argument1;
var attackSpeed = object.AttackSpeed;
var enemyDamage = argument2;
var allyDamage = argument3;
var allyHeal = argument4;
var monsterAggro = argument5;
var knockback = argument6;
var stun = argument7;
var aoeRadius = argument8;


switch(object.SpriteType)
{
    case SpriteType.Link:
        switch(object.CurrentDirection)
        {
            case Direction.North:
                with(instance_create(object.x + LinkSwing.NorthX, object.y + LinkSwing.NorthY, weapon))
                {
                    sprite_index = weapon.NorthSprite;
                    AttackSpeed = attackSpeed;
                    EnemyDamage = enemyDamage;
                    AllyDamage = allyDamage;
                    AllyHeal = allyHeal;
                    MonsterAggro = monsterAggro;
                    Knockback = knockback;
                    Stun = stun;
                    AoeRadius = aoeRadius;
                }
                break;
            case Direction.South: 
                with(instance_create(object.x + LinkSwing.SouthX, object.y + LinkSwing.SouthY, weapon))
                {
                    sprite_index = weapon.SouthSprite;
                    AttackSpeed = attackSpeed;
                    EnemyDamage = enemyDamage;
                    AllyDamage = allyDamage;
                    AllyHeal = allyHeal;
                    MonsterAggro = monsterAggro;
                    Knockback = knockback;
                    Stun = stun;
                    AoeRadius = aoeRadius;
                }
                break;
            case Direction.East:
                with(instance_create(object.x + LinkSwing.EastX, object.y + LinkSwing.EastY, weapon))
                {
                    sprite_index = weapon.EastSprite;
                    AttackSpeed = attackSpeed;
                    EnemyDamage = enemyDamage;
                    AllyDamage = allyDamage;
                    AllyHeal = allyHeal;
                    MonsterAggro = monsterAggro;
                    Knockback = knockback;
                    Stun = stun;
                    AoeRadius = aoeRadius;
                }
                break;
            case Direction.West:
                with(instance_create(object.x + LinkSwing.WestX, object.y + LinkSwing.WestY, weapon))
                {
                    sprite_index = weapon.WestSprite;
                    AttackSpeed = attackSpeed;
                    EnemyDamage = enemyDamage;
                    AllyDamage = allyDamage;
                    AllyHeal = allyHeal;
                    MonsterAggro = monsterAggro;
                    Knockback = knockback;
                    Stun = stun;
                    AoeRadius = aoeRadius;
                }
                break;
        }
        break;
}