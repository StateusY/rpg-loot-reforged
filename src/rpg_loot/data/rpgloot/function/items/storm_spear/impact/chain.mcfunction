$execute on passengers run rotate @s facing ~$(x) ~10 ~$(z)
execute on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1f,1f,1f],scale:[1f,1f,42f]}}

tag @s remove rpgloot.storm_spear_strike_new
scoreboard players add .safe rpgloot.temp 1
execute if score .safe rpgloot.temp matches 150.. run return fail
execute if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:300,max:999}}}} run return fail
summon armor_stand ~ ~20 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgloot.storm_spear_strike","rpgloot.storm_spear_strike_new"],Passengers:[{id:"minecraft:item_display",view_range:100f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,20f],scale:[0f,0f,0f]},item:{id:"minecraft:white_wool",count:1}}],equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{"minecraft:enchantments":{"rpgloot:backend/items/storm_spear_big_strike":1,fire_aspect:2}}}}}
execute store result storage rpgloot:temp strike.x double 0.1 run random value -10..10
execute store result storage rpgloot:temp strike.z double 0.1 run random value -10..10
$execute facing ~$(x) ~10 ~$(z) positioned ^ ^ ^22 as @n[type=armor_stand,tag=rpgloot.storm_spear_strike_new] run function rpgloot:items/storm_spear/impact/chain with storage rpgloot:temp strike