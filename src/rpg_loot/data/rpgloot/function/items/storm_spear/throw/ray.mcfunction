#particle electric_spark ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove .ray rpgloot.temp 1
execute if predicate {condition:"minecraft:random_chance",chance:0.10} run function rpgloot:items/storm_spear/lightning/spawn_step
execute if block ^ ^ ^.5 #bs.hitbox:can_pass_through unless score .ray rpgloot.temp matches ..0 positioned ^ ^ ^.5 run return run function rpgloot:items/storm_spear/throw/ray
execute positioned ~ ~ ~ run particle flash{color:[0.000,1.000,0.933,1.00]} ~ ~ ~ 0 0 0 0 1 force
execute positioned ~ ~ ~ run function rpgloot:items/storm_spear/lightning/spawn_step
execute positioned ~ ~ ~ run function rpgloot:items/storm_spear/lightning/spawn_step
execute positioned ~ ~ ~ run function rpgloot:items/storm_spear/lightning/spawn_step
execute positioned ~ ~ ~ run function rpgloot:items/storm_spear/lightning/spawn_step
execute positioned ~ ~ ~ run function rpgloot:items/storm_spear/lightning/spawn_step
function rpgloot:items/storm_spear/impact/impacted