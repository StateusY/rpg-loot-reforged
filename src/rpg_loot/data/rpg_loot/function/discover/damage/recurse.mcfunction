execute if data storage rpgloot:temp data.damage[0].min if data storage rpgloot:temp data.damage[0].max run function rpg_loot:discover/damage/roll with storage rpgloot:temp data.damage[0]
function rpg_loot:discover/damage/add with storage rpgloot:temp data.damage[0]
data remove storage rpgloot:temp data.damage[0]
execute if data storage rpgloot:temp data.damage[0] run function rpg_loot:discover/damage/recurse with storage rpgloot:temp data.damage[0]
