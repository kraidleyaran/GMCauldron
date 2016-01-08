///CheckAggroRange(monster)
var monster = argument0;

var centerX = monster.bbox_right - monster.bbox_bottom;
var centerY = monster.bbox_bottom - monster.bbox_top;

var playerId = collision_circle(centerX, centerY, monster.AggroRange, Player, false, true)
if (playerId < 0)
{
    return false;
}
else
{
    switch(DoesKeyExist(monster.AggroList, playerId))
    {
        case false:
            AddKeyValueToMap(monster.AggroList, playerId, 0);
            break;
    }
}
