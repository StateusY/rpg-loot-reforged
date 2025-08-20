function rpgc:z_core/player/data/misc/damage_recurse_ with storage rpgc:temp combat.damages[0]
data remove storage rpgc:temp combat.damages[0]
execute if data storage rpgc:temp combat.damages[0] run function rpgc:z_core/player/data/misc/damage_recurse