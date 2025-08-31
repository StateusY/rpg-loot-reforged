scoreboard players operation heart rpgc.temp = color rpgc.temp
execute if score hp rpgc.temp matches 2.. run scoreboard players add heart rpgc.temp 2
execute if score hp rpgc.temp matches 1 run scoreboard players add heart rpgc.temp 1
execute if score heart rpgc.temp matches 10.. run scoreboard players remove heart rpgc.temp 8

execute store result storage rpgc:temp hud.heart int 1 run scoreboard players get heart rpgc.temp
data modify storage rpgc:temp hud.hearts append from storage rpgc:temp hud.heart

scoreboard players remove hp rpgc.temp 2
scoreboard players remove hearts rpgc.temp 1
execute if score hearts rpgc.temp matches 1.. run function rpgc:z_core/player/hud/hp/heart

