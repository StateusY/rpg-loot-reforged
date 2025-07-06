scoreboard players set hp rpgc.temp 9
scoreboard players operation hp rpgc.temp += @s rpgc.hp
scoreboard players operation hp rpgc.temp /= #10 constant
scoreboard players operation hearts rpgc.temp = hp rpgc.temp
scoreboard players operation hearts rpgc.temp %= #20 constant
scoreboard players operation color rpgc.temp = hp rpgc.temp
scoreboard players operation color rpgc.temp /= #20 constant
scoreboard players operation color_index rpgc.temp = color rpgc.temp
scoreboard players remove color_index rpgc.temp 1
scoreboard players operation color_index rpgc.temp %= #4 constant
scoreboard players operation color_index rpgc.temp *= #2 constant

data modify storage rpgc:temp display.hearts set value []
scoreboard players set index rpgc.temp 0
function rpgc:-/player/hud/heart
