execute store result storage rpgloot:temp data.damage[0].min int 10 run data get storage rpgloot:temp data.damage[0].min
execute store result storage rpgloot:temp data.damage[0].max int 10 run data get storage rpgloot:temp data.damage[0].max
function rpg_loot:discover/damage/roll_ with storage rpgloot:temp data.damage[0]
