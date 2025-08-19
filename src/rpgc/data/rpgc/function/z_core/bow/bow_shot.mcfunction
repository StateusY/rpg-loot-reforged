
scoreboard players reset @s rpgc.shot_arrow
execute unless entity @s[tag=rpgc.bow_ran_once] run function rpgc:z_core/bow/run_once

#data modify storage rpgc:temp bow.events set from entity @s SelectedItem.components."minecraft:custom_data".events


function rpgc:z_core/bow/inaccuracy with storage rpgc:temp bow

# modfies the arrow with velocity and merges data onto arrow marker
execute unless entity @n[type=arrow,tag=rpgc.arrow_current] run function rpgc:z_api/warn {message:"Shot arrow not found. Bow failed."}
execute as @n[type=arrow,tag=rpgc.arrow_current] at @s rotated as @p run function rpgc:z_core/bow/modify_arrow with storage rpgc:temp bow


## this breaks everything, do not trust it
#data remove storage rpgc:temp bow

tag @s add rpgc.bow_ran_once