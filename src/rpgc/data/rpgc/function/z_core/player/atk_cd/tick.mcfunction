
execute if score @s rpgc.atk_cooldown matches 1.. run scoreboard players remove @s rpgc.atk_cooldown 1
execute if score @s rpgc.atk_cooldown matches ..0 run attribute @s attack_damage base set 1
