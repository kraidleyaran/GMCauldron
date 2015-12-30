///AddToArray(array, item)
var currentArray = argument0;
var currentItem = argument1;
if (string(currentArray[0]) == EMPTYARRAY)
{
    currentArray[0] = currentItem;
    return currentArray;
}
currentArray[array_length_1d(currentArray)] = currentItem;
return currentArray;