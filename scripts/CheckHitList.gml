///CheckHitList(object)

var object = argument0;

var listLength = GetListLength(object.HitList)

for (i = 0; i < listLength; i += 1)
{
    var hit = GetFromList(object.HitList, i)
    if !(instance_exists(hit))
    {
        RemoveFromList(object.HitList, i);
        listLength = GetListLength(object.HitList);
        i -= 1;
    }
}