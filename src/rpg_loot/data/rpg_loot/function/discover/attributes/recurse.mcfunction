execute if data storage rpgloot:temp data.attributes[0].min if data storage rpgloot:temp data.attributes[0].max run function rpg_loot:discover/attributes/roll with storage rpgloot:temp data.attributes[0]
function rpg_loot:discover/attributes/add with storage rpgloot:temp data.attributes[0]
data remove storage rpgloot:temp data.attributes[0]
execute if data storage rpgloot:temp data.attributes[0] run function rpg_loot:discover/attributes/recurse with storage rpgloot:temp data.attributes[0]
