///CheckAggroRange(monster)
var monster = argument0;
var aggroRange = monster.AggroRange;
var leashList = monster.LeashList;
var aggroList = monster.AggroList;

var centerX = monster.bbox_left + ((monster.bbox_right - monster.bbox_left) / 2);
var centerY = monster.bbox_top + ((monster.bbox_bottom - monster.bbox_top) / 2);

with(Player)
{
    if ((collision_circle(centerX, centerY, aggroRange,id, false, false) != noone))
    {
        if !(GetIndexOfObject(leashList, id) >= 0)
        {
            AddToList(leashList, id);
            AddKeyValueToMap(aggroList, id, 1);
        }
    }
}

switch(GetListLength(monster.LeashList) > 0)
{
    case true:
        monster.Aggrod = true;
        break;
    case false:
        monster.Aggrod = false;
    
}