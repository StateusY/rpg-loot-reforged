
# stores a random inacuracy of the shot arrow
execute store result storage rpgc:temp bow.inaccuracy double 1000 run data get entity @s SelectedItem.components."minecraft:custom_data".bow.inaccuracy
execute store result storage rpgc:temp bow.accuracy double 0.01 run function rpgc:z_api/attribute/get {id:accuracy}
function rpgc:z_core/bow/_accuracy with storage rpgc:temp bow


# stores a velocity multiplier based on the draw percent 
execute store result storage rpgc:temp bow.draw double 0.00003 run scoreboard players get @s rpgc.draw_percent

execute store result storage rpgc:temp bow.draw_dmg double 0.01 run scoreboard players get @s rpgc.draw_percent

function rpgc:z_core/bow/attribute_ with storage rpgc:temp bow

function rpgc:z_core/player/data/fetch_damage


#modifies the damage based on draw percent



# gets the velocity based on draw percent
function rpgc:z_core/bow/fetch_velocity with storage rpgc:temp bow
execute store result storage rpgc:temp bow.velocity_add double 10 run function rpgc:z_api/attribute/get {id:velocity}
function rpgc:z_core/bow/velocity_ with storage rpgc:temp bow