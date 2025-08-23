tag @s add rpgloot.shade_angry
playsound minecraft:entity.phantom.ambient player @a ~ ~ ~ .5 0
rotate @s ~ ~-90
execute as @n[tag=rpgc.current_attacker] run function gu:generate
data modify entity @s data.target set from storage gu:main out