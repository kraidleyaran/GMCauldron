///GenerateGoblinSprites(enemy)
var currentEnemy = argument0;

SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.North), Red_Goblin_Walk_North);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.South), Red_Goblin_Walk_South);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.West), Red_Goblin_Walk_West);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Stand, Direction.East), Red_Goblin_Walk_East);

SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.North), Red_Goblin_Walk_North);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.South), Red_Goblin_Walk_South);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.West), Red_Goblin_Walk_West);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Move, Direction.East), Red_Goblin_Walk_East);

SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.North), Red_Goblin_Attack_North);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.South), Red_Goblin_Attack_South);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.West), Red_Goblin_Attack_West);
SetKeyOfMap(currentEnemy.Animations, GetAnimationName(Animation.Forward, Direction.East), Red_Goblin_Attack_East);