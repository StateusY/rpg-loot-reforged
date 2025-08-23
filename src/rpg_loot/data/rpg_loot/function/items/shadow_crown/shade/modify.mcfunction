scoreboard players operation @s rpgc.id = .id rpgc.temp
data modify entity @s data.owner set from storage gu:main out
data modify entity @s data.damage set from storage rpgloot:temp shade.damage
execute store result entity @s data.speed double 0.015 run random value 40..75