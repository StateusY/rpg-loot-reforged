# From <rpgc:z_core/bow/fire>

## Modifys damage based on draw percent.
function rpgc:z_core/bow/info/raw_scale with storage rpgc:temp bow.raw_damage[0]
$execute store result storage rpgc:temp bow.raw_damage[0].amount double $(draw_dmg) run data get storage rpgc:temp bow.raw_damage[0].amount
# move raw damage to damage
data modify storage rpgc:temp bow.damage prepend from storage rpgc:temp bow.raw_damage[0]
function rpgc:z_core/bow/info/scale_result with storage rpgc:temp bow.damage[0]
# delete first element of raw damage
data remove storage rpgc:temp bow.raw_damage[0]
# check if more elements in raw damage
execute if data storage rpgc:temp bow.raw_damage[0] run function rpgc:z_core/bow/scale_damage with storage rpgc:temp bow
