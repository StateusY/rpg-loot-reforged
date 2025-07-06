
data modify storage rpgc:temp bow.raw_damage set from entity @s SelectedItem.components."minecraft:custom_data".damage
data modify storage rpgc:temp bow.events set from entity @s SelectedItem.components."minecraft:custom_data".events

execute store result storage rpgc:temp bow.inaccuracy double 1000 run data get entity @s SelectedItem.components."minecraft:custom_data".bow.inaccuracy


function rpgc:-/bow/random with storage rpgc:temp bow
scoreboard players operation .temp rpgc.drawing = @s rpgc.drawing
scoreboard players operation .temp rpgc.drawing *= #100 constant

execute store result score .temp rpgc.temp run data get entity @s SelectedItem.components.minecraft:custom_data.bow.draw
scoreboard players operation .temp rpgc.drawing /= .temp rpgc.temp
execute if score .temp rpgc.drawing matches 101.. run scoreboard players set .temp rpgc.drawing 100
execute store result storage rpgc:temp bow.draw double 0.00003 run scoreboard players get .temp rpgc.drawing
scoreboard players reset .temp

execute store result storage rpgc:temp bow.draw_dmg double 0.01 run scoreboard players get @s rpgc.draw_percent
data modify storage rpgc:temp bow.damage set value []
execute if data storage rpgc:temp bow.raw_damage[0] run function rpgc:-/bow/scale_damage with storage rpgc:temp bow

function rpgc:-/bow/fetch with storage rpgc:temp bow

scoreboard players reset @s rpgc.shot_arrow
function rpgc:-/player/storage/get with entity @s
function rpgc:-/event/call {type:"shoot",source:"storage rpgc:data current"}
data modify storage rpgc:temp bow.owner set from storage rpgc:data current.STRINGUUID
execute as @n[type=arrow,tag=rpgc.arrow_current] at @s rotated as @p run function rpgc:-/bow/modify with storage rpgc:temp bow
data remove storage rpgc:temp bow
scoreboard players reset @s rpgc.drawing
scoreboard players reset @s rpgc.draw_percent
