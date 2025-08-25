execute store result storage rpgc:temp value int 1 run function rpgc:z_core/mob/display/get_empty_value
data modify storage rpgc:temp display.bar_empty append from storage rpgc:temp value

