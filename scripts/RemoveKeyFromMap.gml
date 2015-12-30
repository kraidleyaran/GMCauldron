///RemoveKeyFromMap(mapId, key)
var currentMapId = argument0;
var currentKey = argument1;

if (DoesKeyExist(currentMapId, currentKey))
{
    ds_map_delete(currentMapId, currentKey);
    return true;
}
return false;