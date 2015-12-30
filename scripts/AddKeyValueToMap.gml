///AddKeyValueToMap(mapId, Key, Value)
var currentMapId = argument0;
var currentKey = argument1;
var currentValue = argument2;
if (DoesKeyExist(currentMapId, currentKey))
{
    return false;
}
ds_map_add(currentMapId, currentKey, currentValue);
return true;