function rpgc:z_api/fetch_damage/damage with storage rpgc:temp fetch.damages[0]
data remove storage rpgc:temp fetch.damages[0]
execute if data storage rpgc:temp fetch.damages[0] run function rpgc:z_api/fetch_damage/recurse