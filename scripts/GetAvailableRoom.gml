///GetAvailableRooms(unusedRooms,usedRoomList, unbuiltRoomList, room , dungeonX, dungeonY, maxCount)
var listId = argument0;
var usedListId = argument1;
var unbuiltRoomList = argument2;
var currentRoom = argument3;
var dungeonX = argument4;
var dungeonY = argument5;
var maxCount = argument6;

var pDungeonX = dungeonX - 1;
var pDungeonY = dungeonY - 1;

var availableRooms = CreateNewList();

var roomX = real(string_char_at(currentRoom,0));
var roomY = real(string_char_at(currentRoom,1));

var northPos = string(roomX) + string(roomY - 1);
var southPos = string(roomX) + string(roomY + 1);
var eastPos = string(roomX + 1) + string(roomY);
var westPos = string(roomX - 1) + string(roomY);

var north = false;
var south = false;
var east = false;
var west = false;

switch(roomX)
{
    case 0:
        AddToList(availableRooms, eastPos);
        east = true
        break;
    case pDungeonX:
        AddToList(availableRooms, westPos);
        west = true;
        break;
    default:
        AddToList(availableRooms, westPos);
        AddToList(availableRooms, eastPos);
        east = true;
        west = true;
        break;
}
switch(roomY)
{
    case 0:
        AddToList(availableRooms, northPos);
        north = true;
        break;
    case pDungeonY:
        AddToList(availableRooms, southPos);
        south = true;
        break;
    default:
        AddToList(availableRooms, northPos);
        AddToList(availableRooms, southPos);
        north = true;
        break;   
}
if (north && GetIndexOfObject(listId, string(roomX) + string(roomY - 1)) < 0)
{
    RemoveFromList(availableRooms, GetIndexOfObject(availableRooms, northPos));
}
if (south && GetIndexOfObject(listId, string(roomX) + string(roomY + 1)) < 0)
{
    RemoveFromList(availableRooms, GetIndexOfObject(availableRooms, southPos));
}
if (east && GetIndexOfObject(listId, string(roomX + 1) + string(roomY)) < 0)
{
    RemoveFromList(availableRooms, GetIndexOfObject(availableRooms, eastPos));
}
if (west && GetIndexOfObject(listId, string(roomX - 1) + string(roomY)) < 0)
{
    RemoveFromList(availableRooms, GetIndexOfObject(availableRooms,westPos));
}

var ListLength = GetListLength(availableRooms);
if (ListLength > maxCount)
{
    ListLength = maxCount;
}
ShuffleList(availableRooms)
randomize()
var roomCount = irandom_range(0, ListLength)
for (i = 0; i < roomCount; i += 1)
{
    AddToList(usedListId,GetFromList(availableRooms, i))
    AddToList(unbuiltRoomList, GetFromList(availableRooms, i));
    RemoveFromList(listId, GetIndexOfObject(listId, GetFromList(availableRooms, i)));
}

RemoveFromList(unbuiltRoomList, GetIndexOfObject(unbuiltRoomList,currentRoom));

return ListLength;