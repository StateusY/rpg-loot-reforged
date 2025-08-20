
data modify storage rpgc:temp properties.name set string storage rpgc:temp mob.type
tag @s add rpgc.mob_default
data modify storage rpgc:temp properties.hp set from entity @s Health
execute store result storage rpgc:temp temp double 1 run attribute @s attack_damage get
function rpgc:z_core/mob/spawning/default_ with storage rpgc:temp
data remove storage rpgc:temp temp
data modify storage rpgc:temp properties.cd set value 20
