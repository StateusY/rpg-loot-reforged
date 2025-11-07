tag @s add rpgloot.magnite_orbit_thrown
data modify entity @s data.armor set from storage rpgloot:temp magnite.armor
summon item_display ~ ~ ~ {Tags:[rpgloot.magnite_throw_marker,rpgloot.magnite_throw_marker_new],teleport_duration:5}
ride @s mount @n[tag=rpgloot.magnite_throw_marker_new]
execute on passengers run data merge entity @s {transformation:{translation:[-.25f,.75f,-.25f]},interpolation_duration:5}
execute on vehicle run tp @s @n[type=#rpgc:all,tag=rpgc.current_victim]
rotate @s ~ 0
