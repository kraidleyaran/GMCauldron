///CheckLeashRange(monster)
var monster = argument0;
var aggrod = monster.Aggrod;
var leashRange = monster.LeashRange;
var aggroList = monster.AggroList;
var leashList = monster.LeashList;
var target = monster.Target;
var targetAggro = monster.TargetAggro;

var centerX = round(monster.bbox_left + ((monster.bbox_right - monster.bbox_left) / 2));
var centerY = round(monster.bbox_top + ((monster.bbox_bottom - monster.bbox_top) / 2));

var leashListLength = GetListLength(monster.LeashList)
switch(leashListLength)
{
    case 0:
        switch(monster.Aggrod)
        {
            case true:
                monster.Aggrod = false;
                break;       
        }
        return false;
}
for (i = 0; i < leashListLength; i+= 1)
{
    with(GetFromList(leashList, i))
    {
        switch(collision_circle(centerX, centerY, leashRange,id, false, true) == noone)
        {
            case true:
                var aggro = GetValueFromMap(aggroList, id)
                switch (target == noone)
                {
                    case true:
                        target = id;
                        targetAggro = GetValueFromMap(aggroList, id);
                        break;
                    case false:
                        switch(targetAggro < aggro)
                        {
                            case true:
                                target = id;
                                targetAggro = aggro;
                                break;
                        }
                        break;
                }
                break;
            case false:
               RemoveFromList(leashList, i);
               RemoveKeyFromMap(aggroList,id);  
                break;
 
        }
    }
}

if (target != monster.Target)
{
    monster.Target = target;
    monster.TargetAggro = targetAggro;
}

leashListLength = GetListLength(monster.LeashList)
switch(leashListLength)
{
    case 0:
        switch(monster.Aggrod)
        {
            case true:
                monster.Aggrod = false;
                monster.Target = noone;
                monster.TargetAggro = 0;
                break;       
        }
    default:
        monster.Aggord = true;
        break;
}

return monster.Aggord;