
scoreboard players reset @s rpgc.shot_arrow
data modify storage rpgc:temp bow.raw_damage set from entity @s SelectedItem.components."minecraft:custom_data".damage
function rpgc:z_core/bow/info/raw_damage with storage rpgc:temp bow
#data modify storage rpgc:temp bow.events set from entity @s SelectedItem.components."minecraft:custom_data".events

# stores a random inacuracy of the shot arrow
execute store result storage rpgc:temp bow.inaccuracy double 1000 run data get entity @s SelectedItem.components."minecraft:custom_data".bow.inaccuracy
function rpgc:z_core/bow/inaccuracy with storage rpgc:temp bow

# stores a velocity multiplier based on the draw percent 
execute store result storage rpgc:temp bow.draw double 0.00003 run scoreboard players get @s rpgc.draw_percent

#modifies the damage based on draw percent
execute store result storage rpgc:temp bow.draw_dmg double 0.01 run scoreboard players get @s rpgc.draw_percent
data remove storage rpgc:temp bow.damage
execute if data storage rpgc:temp bow.raw_damage[0] run function rpgc:z_core/bow/scale_damage with storage rpgc:temp bow

# gets the velocity based on draw percent
function rpgc:z_core/bow/fetch_velocity with storage rpgc:temp bow

# modfies the arrow with velocity and merges data onto arrow marker
execute unless entity @n[type=arrow,tag=rpgc.arrow_current] run function rpgc:z_api/warn {message:"Shot arrow not found. Bow failed. Might be a vanilla bow"}
execute as @n[type=arrow,tag=rpgc.arrow_current] at @s rotated as @p run function rpgc:z_core/bow/modify_arrow with storage rpgc:temp bow

data remove storage rpgc:temp bow
