///DestroyObjectMapsAndLists(object)
var currentObject = argument0;

ds_map_destroy(currentObject.Animations);
ds_map_destroy(currentObject.Cooldowns);