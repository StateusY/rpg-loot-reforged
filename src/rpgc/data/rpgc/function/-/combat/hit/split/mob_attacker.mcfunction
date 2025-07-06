execute store result storage rpgc:temp attacker.atk_cd int 1 run scoreboard players get @s rpgc.atk_cd
function rpgc:-/combat/hit/mob_cd with storage rpgc:temp attacker
data modify storage rpgc:temp attacker.damage set from entity @s HandItems[0].components."minecraft:custom_data".damage
function rpgc:-/event/call {type:"hit",source:"entity @s HandItems[0].components.minecraft:custom_data"}
