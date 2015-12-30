///GenerateProperties(object)
var currentObject = argument0;
currentObject.CurrentDirection = Direction.South;
currentObject.MoveSpeed = 5;
currentObject.Moving = false;
currentObject.DefaultFrameSpeed = .2;
currentObject.Animations = ds_map_create();
currentObject.Projectiles = CreateNewList();
currentObject.CurrentAnimation = "";
currentObject.CurrentAction = Action.Stand;
currentObject.DefaultAction = Action.Stand;
currentObject.AnimationLooped = false;
currentObject.PlayCount = 0;
currentObject.MaxPlayCount = 0;
currentObject.CurrentType = ObjectType.Pickup;
currentObject.SpriteType = SpriteType.NoSprite;
currentObject.AttackSpeed = 1;