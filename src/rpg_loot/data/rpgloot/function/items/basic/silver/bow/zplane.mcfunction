### 180 - Rotation[0]
scoreboard players set .temp rpgc.temp 18000
execute store result score .temp2 rpgc.temp run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation .temp rpgc.temp -= .temp2 rpgc.temp
scoreboard players reset .temp rpgc.temp
scoreboard players reset .temp2 rpgc.temp