# Get fill amount of this segment and add it to the display
execute store result storage rpgc:temp value int 1 run function rpgc:z_core/mob/display/get_size_value
data modify storage rpgc:temp display.bar_size append from storage rpgc:temp value

execute if score bar_fill rpgc.temp matches 1.. run function rpgc:z_core/mob/display/add_fill
execute if score bar_empty rpgc.temp matches 1.. run function rpgc:z_core/mob/display/add_empty

scoreboard players remove bar_size rpgc.temp 8
scoreboard players remove bar_fill rpgc.temp 8
scoreboard players remove bar_empty rpgc.temp 8
execute if score bar_size rpgc.temp matches 1.. run function rpgc:z_core/mob/display/build

