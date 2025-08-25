data modify storage rpgc:temp display.bar_size set value []
data modify storage rpgc:temp display.bar_fill set value []
data modify storage rpgc:temp display.bar_empty set value []

execute store result score bar_size rpgc.temp run data get entity @s data.bar_size
execute unless score bar_size rpgc.temp matches ..200 run scoreboard players set bar_size rpgc.temp 200

scoreboard players operation bar_fill rpgc.temp = @s rpgc.hp
scoreboard players operation bar_fill rpgc.temp *= bar_size rpgc.temp
scoreboard players operation bar_fill rpgc.temp /= @s rpgc.max_hp
scoreboard players operation bar_empty rpgc.temp = bar_size rpgc.temp
scoreboard players operation bar_empty rpgc.temp -= bar_fill rpgc.temp

function rpgc:z_core/mob/display/build

execute unless data storage rpgc:temp display.bar_fill[0] run data modify storage rpgc:temp display.bar_fill set value [0]
execute unless data storage rpgc:temp display.bar_empty[0] run data modify storage rpgc:temp display.bar_empty set value [0]

function rpgc:z_core/mob/display/apply with storage rpgc:temp display
data remove storage rpgc:temp display

