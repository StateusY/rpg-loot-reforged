# Get fill amount of this segment and add it to the display
execute store result storage rpgc:temp value int 1 run function rpgc:z_core/mob/display/get_fill_value
data modify storage rpgc:temp display.bar append from storage rpgc:temp value

scoreboard players remove bar_fill rpgc.temp 8
scoreboard players remove bar_size rpgc.temp 8
execute if score bar_size rpgc.temp matches 1.. run function rpgc:z_core/mob/display/add_fill

