//GeneratePlayerPropertes(player)
var currentPlayer = argument0;
currentPlayer.CurrentType = ObjectType.User;
currentPlayer.ButtonActions = ds_map_create();
currentPlayer.LocalControls = ds_map_create();
currentPlayer.AttackSpeed = 7;
CreateDefaultAnimations(currentPlayer);
currentPlayer.Alignment = Alignment.Hero;
currentPlayer.SpriteType = SpriteType.Link;
currentPlayer.UsingSkill = false;