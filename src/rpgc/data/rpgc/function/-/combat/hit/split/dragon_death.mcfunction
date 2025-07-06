execute if score @s rpgc.hp matches 1.. run return fail
tag @s add rpgc.boss_dead
data merge entity @s {Health:1f}
damage @s 1000 player_attack by @p