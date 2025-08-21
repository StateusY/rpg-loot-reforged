execute store result storage rpgc:temp unarmed.dmg double 0.01 run attribute @s attack_damage get 100
function rpgc:z_core/player/equipment/unarmed_ with storage rpgc:temp unarmed
data remove storage rpgc:temp unarmed
tag @s add rpgc.unarmed