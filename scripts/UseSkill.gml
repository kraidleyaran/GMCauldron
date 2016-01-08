///UseSkill(object, skill)
var object = argument0;
var skill = argument1;
switch(skill)
{
    case SkillName.SwingWoodSword: 
        var weapon = GetValueFromMap(SkillBook.SwingWoodSword, Skill.Object);
        var attackSpeed = GetValueFromMap(SkillBook.SwingWoodSword, Skill.AttackSpeed);
        var enemyDamage = GetValueFromMap(SkillBook.SwingWoodSword, Skill.EnemyDamage);
        var allyDamage = GetValueFromMap(SkillBook.SwingWoodSword, Skill.AllyDamage);
        var allyHealing = GetValueFromMap(SkillBook.SwingWoodSword, Skill.AllyHealing);
        var monsterAggro = GetValueFromMap(SkillBook.SwingWoodSword, Skill.MonsterAggro);
        var knockback = GetValueFromMap(SkillBook.SwingWoodSword, Skill.Knockback);
        var stun = GetValueFromMap(SkillBook.SwingWoodSword, Skill.Stun);
        var aoeRadius = GetValueFromMap(SkillBook.SwingWoodSword, Skill.AoeRadius);
        
        SetObjectAnimation(object, GetAnimationName(Animation.Forward, object.CurrentDirection),object.DefaultFrameSpeed,object.AttackSpeed);
        SwingWeapon(object, weapon, enemyDamage, allyDamage, allyHealing, monsterAggro, knockback, stun, aoeRadius);
        break;
        
    case SkillName.ShootOctorokShell:
        var projectile = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.Object);
        var attackSpeed = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.AttackSpeed);
        var moveSpeed = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.MoveSpeed);
        var enemyDamage = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.EnemyDamage);
        var allyDamage = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.AllyDamage);
        var allyHealing = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.AllyHealing);
        var monsterAggro = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.MonsterAggro);
        var knockback = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.Knockback);
        var stun = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.Stun);
        var aoeRadius = GetValueFromMap(SkillBook.ShootOctorokShell, Skill.AoeRadius);
        
        ShootProjectile(object, projectile, moveSpeed, enemyDamage, allyDamage, allyHealing, monsterAggro, knockback, stun, aoeRadius)
        break;
}
