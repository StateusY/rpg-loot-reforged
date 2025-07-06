execute if entity @s[advancements={rpgc:gamemode/creative=true}] run return run data modify storage rpgc:temp display.text set value '""'

execute store result score health.1 rpgc.temp store result score health.2 rpgc.temp run scoreboard players get @s rpgc.hp
scoreboard players operation health.1 rpgc.temp /= #10 constant
scoreboard players operation health.2 rpgc.temp %= #10 constant

execute store result storage rpgc:temp display.health.1 int 1 run scoreboard players get health.1 rpgc.temp
execute store result storage rpgc:temp display.health.2 int 1 run scoreboard players get health.2 rpgc.temp

function rpgc:-/player/hud/calculate_hearts

data modify storage rpgc:temp display.text set value '[\
    [{"text":"","font":"rpgc:hud_numbers_inverse","color":"#000002"},{"score":{"name":"health.1","objective":"rpgc.temp"}},".",{"score":{"name":"health.2","objective":"rpgc.temp"}}," "],\
    [{"text":"","font":"rpgc:hud_numbers","color":"#000002"},{"score":{"name":"health.1","objective":"rpgc.temp"}},".",{"score":{"name":"health.2","objective":"rpgc.temp"}}," "],\
    {"nbt":"display.hearts","storage":"rpgc:temp","font":"rpgc:hud_heart","color":"#000002"}\
]'
