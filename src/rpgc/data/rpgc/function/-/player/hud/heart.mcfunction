scoreboard players set heart rpgc.temp 0
execute if score hearts rpgc.temp > index rpgc.temp run scoreboard players add heart rpgc.temp 2
scoreboard players add index rpgc.temp 1
execute if score hearts rpgc.temp = index rpgc.temp run scoreboard players remove heart rpgc.temp 1
scoreboard players remove index rpgc.temp 1

scoreboard players operation heart rpgc.temp += color_index rpgc.temp

scoreboard players operation heart rpgc.temp %= #8 constant
execute if score color rpgc.temp matches 0 run scoreboard players add heart rpgc.temp 2
execute if score color rpgc.temp matches 0 if score heart rpgc.temp matches 2 run scoreboard players set heart rpgc.temp 0

scoreboard players add index rpgc.temp 2

execute store result storage rpgc:temp display.heart int 1 run scoreboard players get heart rpgc.temp
data modify storage rpgc:temp display.hearts append from storage rpgc:temp display.heart
execute if score index rpgc.temp matches 0..19 run function rpgc:-/player/hud/heart
