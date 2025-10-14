
$data modify storage rpgc:temp properties.name set value '"$(type)"'
tag @s add rpgc.mob_default
data modify storage rpgc:temp properties.hp set from entity @s Health
data modify storage rpgc:temp properties.bar_size set value 100
execute store result storage rpgc:temp temp double 1 run attribute @s attack_damage get
function rpgc:z_core/mob/spawning/default_ with storage rpgc:temp
data remove storage rpgc:temp temp
data modify storage rpgc:temp properties.cd set value 20
