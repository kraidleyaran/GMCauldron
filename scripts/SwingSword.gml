///SwingSword(object, attackSpeed, damage)

var object = argument0;

var attackSpeed = argument1 + attackSpeed;

switch(object.SpriteType)
{
    case SpriteType.Link:
        switch(object.CurrentDirection)
        {
            case Direction.North:
                var sword = instance_create(object.x + LinkSwing.NorthX, object.y + LinkSwing.NorthY, BrownSword)
                with(sword)
                {
                    sprite_index = Brown_Sword_North;
                    AttackSpeed = attackSpeed;
                }
                break;
            case Direction.South:
                var sword = instance_create(object.x + LinkSwing.SouthX, object.y + LinkSwing.SouthY, BrownSword)
                with(sword)
                {
                    sprite_index = Brown_Sword_South;
                    AttackSpeed = attackSpeed;
                }
                break;
            case Direction.East:
                var sword = instance_create(object.x + LinkSwing.EastX, object.y + LinkSwing.EastY, BrownSword)
                with(sword)
                {
                    sprite_index = Brown_Sword_East;
                    AttackSpeed = attackSpeed;
                }
                break;
            case Direction.West:
                var sword = instance_create(object.x + LinkSwing.WestX, object.y + LinkSwing.WestY, BrownSword)
                with(sword)
                {
                    sprite_index = Brown_Sword_West;
                    AttackSpeed = attackSpeed;
                }
                break;
        }
        break;
}
