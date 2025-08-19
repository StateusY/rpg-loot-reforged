
data modify storage rpgc:temp bow.raw_damage set from entity @s SelectedItem.components."minecraft:custom_data".damage
function rpgc:z_core/bow/info/raw_damage with storage rpgc:temp bow

# stores a random inacuracy of the shot arrow
execute store result storage rpgc:temp bow.inaccuracy double 1000 run data get entity @s SelectedItem.components."minecraft:custom_data".bow.inaccuracy
execute store result storage rpgc:temp bow.accuracy double 0.01 run function rpgc:z_api/attribute/get {id:accuracy}
function rpgc:z_core/bow/_accuracy with storage rpgc:temp bow


# stores a velocity multiplier based on the draw percent 
execute store result storage rpgc:temp bow.draw double 0.00003 run scoreboard players get @s rpgc.draw_percent

#modifies the damage based on draw percent
execute store result storage rpgc:temp bow.draw_dmg double 0.01 run scoreboard players get @s rpgc.draw_percent
data remove storage rpgc:temp bow.damage
execute if data storage rpgc:temp bow.raw_damage[0] run function rpgc:z_core/bow/scale_damage with storage rpgc:temp bow

# gets the velocity based on draw percent
function rpgc:z_core/bow/fetch_velocity with storage rpgc:temp bow
execute store result storage rpgc:temp bow.velocity_add double 10 run function rpgc:z_api/attribute/get {id:velocity}
function rpgc:z_core/bow/velocity_ with storage rpgc:temp bow