data modify storage rpgc:temp properties.name set string storage rpgc:temp mob.type 0
tag @s add rpgc.mob_default
data modify storage rpgc:temp properties.hp set from entity @s Health
data modify storage rpgc:temp properties.damage set value [{type:'physical',amount:0}]
execute store result storage rpgc:temp properties.damage[0].amount double 1 run attribute @s attack_damage get
data modify storage rpgc:temp properties.cd set value 20
