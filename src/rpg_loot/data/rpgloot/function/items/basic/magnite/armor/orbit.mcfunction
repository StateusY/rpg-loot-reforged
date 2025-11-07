execute on passengers at @s run rotate @s ~10 ~
execute if entity @s[tag=rpgloot.magnite_orbit_thrown] run return run function rpgloot:items/basic/magnite/armor/thrown_tick with entity @s data
function rpgloot:items/basic/magnite/armor/follow with entity @s data

execute on passengers at @s run function rpgloot:items/basic/magnite/armor/particles
