///SetProjectilePos(object)
var object = argument0;

switch(object.SpriteType)
{
    case SpriteType.Link:
        object.NorthProjX = 0;
        object.NorthProjY = 0;
        object.SouthProjX = 0;
        object.SouthProjY = 0;
        object.EastProjX = 0;
        object.EastProjY = 0;
        object.WestProjX = 0;
        object.WestProjY = 0;
        break;
    case SpriteType.Octorok:
        object.NorthProjX = 4;
        object.NorthProjY = -1;
        object.SouthProjX = 10;
        object.SouthProjY = 32;
        object.EastProjX = 32;
        object.EastProjY = 10;
        object.WestProjX = -1;
        object.WestProjY = 10;
    default:
        break;
}