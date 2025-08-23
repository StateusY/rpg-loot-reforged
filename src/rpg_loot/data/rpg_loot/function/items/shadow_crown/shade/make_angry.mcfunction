tag @s add rpgloot.shade_angry
execute as @n[tag=rpgc.current_attacker] run function gu:generate
execute store result entity @s data.speed double 0.015 run data get entity @s data.speed 100
data modify entity @s data.target set from storage gu:main out