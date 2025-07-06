execute store result storage rpgloot:temp data.attributes[0].min int 10 run data get storage rpgloot:temp data.attributes[0].min
execute store result storage rpgloot:temp data.attributes[0].max int 10 run data get storage rpgloot:temp data.attributes[0].max
function rpg_loot:discover/attributes/roll_ with storage rpgloot:temp data.attributes[0]
