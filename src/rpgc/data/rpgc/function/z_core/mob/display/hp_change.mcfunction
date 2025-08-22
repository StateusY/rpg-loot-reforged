data modify storage rpgc:temp display.bar set value []

execute store result score bar_size rpgc.temp run data get entity @s data.bar_size
scoreboard players operation bar_fill rpgc.temp = @s rpgc.hp
scoreboard players operation bar_fill rpgc.temp *= bar_size rpgc.temp
scoreboard players operation bar_fill rpgc.temp /= @s rpgc.max_hp

function rpgc:z_core/mob/display/add_fill
execute store result storage rpgc:temp display.backtrack int -1 run scoreboard players get bar_size rpgc.temp

function rpgc:z_core/mob/display/apply with storage rpgc:temp display
data remove storage rpgc:temp display

