///RemoveFromArray(array, index)
var currentArray = argument0;
var currentIndex = argument1;
var length = array_length_1d(currentArray)
var newArray = newArray[0]

if !(currentIndex >= length)
{
    for (i = 0; i < length - 1; i += 1)
    {
        if (i < currentIndex)
        {
            newArray[i] = currentArray[i]
        }
        else
        {
            newArray[i] = currentArray[i + 1];
        }
    }
    currentArray = newArray;
}
