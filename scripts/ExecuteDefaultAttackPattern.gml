///ExecuteDefaultAttackPattern(monster)
var monster = argument0;



if (monster.Target == noone)
{
    return false;
}

var monsterX = monster.bbox_left - ((monster.bbox_right - monster.bbox_left) / 2)
var monsterY = monster.bbox_top - ((monster.bbox_bottom - monster.bbox_top) / 2);


var targetX = 0;
var targetY = 0;
monster.Action = Action.Attack;
with(monster.Target)
{
    targetX = bbox_left - ((bbox_right - bbox_left) / 2)
    targetY = bbox_top - ((bbox_bottom - bbox_top) / 2)
}
switch(CheckTargetDirection(monster))
{
    case Direction.North:
        switch(monsterY - targetY < 100)
        {
            case true:
                UseSkill(monster, SkillName.ShootOctorokShell);
                break;
            case false:
                monster.CurrentDirection = Direction.North;
                MoveEnemy(monster);
                break;
        }
        break;
    case Direction.South:
        switch (targetY - monsterY < 100)
        {
            case true:
                UseSkill(monster, SkillName.ShootOctorokShell);
                break;
            case false:
                monster.CurrentDirection = Direction.South;
                MoveEnemy(monster, monster.CurrentDirection);
                break;
        }
        break;
    case Direction.East:
        switch (targetX - monsterX < 100)
        {
            case true:
                UseSkill(monster, SkillName.ShootOctorokShell);
                break;
            case false:
                monster.CurrentDirection = Direction.East;
                MoveObject(monster, monster.CurrentDirection);
                break;

        }
        break;
    case Direction.West:
        switch (monsterX - targetX < 100)
        {
            case true:
                UseSkill(monster, SkillName.ShootOctorokShell);
                break;
            case false:
                monster.CurrentDirection = Direction.East;
                MoveObject(monster, monster.CurrentDirection);
                break;
        }
        break;
    case Direction.NorthEast:
        var north = 1000 - (monsterY - targetY)
        var east = 1000 - (targetX - monsterX)
        if (north == east)
        {
            randomize();
            switch(irandom_range(0,1))
            {
                case 0:
                    monster.CurrentDirection = Direction.North;
                    
                    break;
                case 1:
                    monster.CurrentDirection = Direction.East;
                    break;   
            }
        }
        else
        {
            switch(north > east)
            {
                case true:
                    monster.CurrentDirection = Direction.North;
                    break;
                case false:
                    monster.CurrentDirection = Direction.East;
                    break;
            }
        }
        MoveObject(monster, monster.CurrentDirection);
        break;
    case Direction.SouthEast:
        var south = 1000 - (targetY - monsterY)
        var east = 1000 - (targetX - monsterX)
        if (south == east)
        {
            randomize();
            switch(irandom_range(0,1))
            {
                case 0:
                    monster.CurrentDirection = Direction.South;
                    break;
                case 1:
                    monster.CurrentDirection = Direction.East;
                    break;   
            }
        }
        else
        {
            switch(south > east)
            {
                case true:
                    monster.CurrentDirection = Direction.South;
                    break;
                case false:
                    monster.CurrentDirection = Direction.East;
                    break;
            }
        }
        MoveObject(monster, monster.CurrentDirection);
        break;
    case Direction.SouthWest:
        var south = 1000 - (targetY - monsterY)
        var west = 1000 - (monsterX - targetX)
        if (south == west)
        {
            randomize();
            switch(irandom_range(0,1))
            {
                case 0:
                    monster.CurrentDirection = Direction.South;
                    break;
                case 1:
                    monster.CurrentDirection = Direction.West;
                    break;   
            }
        }
        else
        {
            switch(south > west)
            {
                case true:
                    monster.CurrentDirection = Direction.South;
                    break;
                case false:
                    monster.CurrentDirection = Direction.West;
                    break;
            }
        }
        MoveObject(monster, monster.CurrentDirection);
        break;
    case Direction.NorthWest:
        var north = 1000 - (monsterY - targetY)
        var west = 1000 - (monsterX - targetX)
        if (north == west)
        {
            randomize();
            switch(irandom_range(0,1))
            {
                case 0:
                    monster.CurrentDirection = Direction.North;
                    break;
                case 1:
                    monster.CurrentDirection = Direction.West;
                    break;   
            }
        }
        else
        {
            switch(north > west)
            {
                case true:
                    monster.CurrentDirection = Direction.North;
                    break;
                case false:
                    monster.CurrentDirection = Direction.West;
                    break;
            }
        }
        MoveObject(monster, monster.CurrentDirection);
        break;
}
SetAnimationFromAction(monster, monster.CurrentAction);
