///ShootProjectile(object, projectile, moveSpeed, enemyDamage, allyDamage, allyHeal, monsterAggro, knockback, stun, aoeRadius)

var object = argument0;
var projectile = argument1;
var moveSpeed = argument2;
var enemyDamage = argument3;
var allyDamage = argument4;
var allyHeal = argument5;
var monsterAggro = argument6;
var knockback = argument7;
var stun = argument8;
var aoeRadius = argument9;

/*if (object.CurrentAction != Action.Attack)
{
    object.CurrentAction = Action.Attack
    object.ShootCooldown = true;
}
else
{
    return true;
}
*/
SetAnimationFromAction(object, Action.Attack);

var objDirection = object.CurrentDirection;

var objBbox_top = object.bbox_top;
var objBbox_bottom = object.bbox_bottom;
var objBbox_right = object.bbox_right;
var objBbox_left = object.bbox_left;

var objCenterX = round(object.bbox_left + ((object.bbox_right - object.bbox_left) / 2 ))
var objCenterY = round(object.bbox_top + ((object.bbox_bottom - object.bbox_top) / 2 ))



with(instance_create(0, 0, projectile))
{
    switch(objDirection)
    {
        case Direction.North:
            x = objCenterX - ((bbox_right - bbox_left) / 2);
            y = (objBbox_top - bbox_bottom) - 1;
            image_angle = 180;            
            break;
        case Direction.South:
            x = objCenterX - ((bbox_right - bbox_left) / 2);
            y = objBbox_bottom + 1;
            break;
        case Direction.East:
            x = objBbox_right + 1;
            y = objCenterY - ((bbox_bottom - bbox_top) / 2);
            image_angle = 90;
            break;
        case Direction.West:
            x = (objBbox_right - bbox_left) - 1;
            y = objCenterY - ((bbox_bottom - bbox_top) / 2);
            image_angle = 270;
            break;
    }
    MoveSpeed = moveSpeed;
    EnemyDamage = enemyDamage;
    AllyDamage = allyDamage;
    AllyHeal = allyHeal;
    MonsterAggro = monsterAggro;
    Knockback = knockback;
    Stun = stun;
    AoeRadius = aoeRadius;
    MoveSpeed = moveSpeed;
    CurrentDirection = objDirection;
}