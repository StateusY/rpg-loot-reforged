scoreboard players add @s rpgloot.storm_spear_strength 1
execute if score @s rpgloot.storm_spear_strength matches 1 run function rpgloot:items/storm_spear/impact/spawn_chain
execute if score @s rpgloot.storm_spear_strength matches 3 run function rpgloot:items/storm_spear/impact/spawn_chain
execute if score @s rpgloot.storm_spear_strength matches 5 run function rpgloot:items/storm_spear/impact/spawn_chain
execute if score @s rpgloot.storm_spear_strength matches 7 run function rpgloot:items/storm_spear/impact/spawn_chain
execute if score @s rpgloot.storm_spear_strength matches 1 run function rpgloot:items/storm_spear/impact/spawn_chain
execute if score @s rpgloot.storm_spear_strength matches 3 run function rpgloot:items/storm_spear/impact/spawn_chain
execute if score @s rpgloot.storm_spear_strength matches 5 run function rpgloot:items/storm_spear/impact/spawn_chain
execute if score @s rpgloot.storm_spear_strength matches 7 run function rpgloot:items/storm_spear/impact/spawn_chain

execute if score @s rpgloot.storm_spear_strength matches 9 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 light[level=10] replace light
execute if score @s rpgloot.storm_spear_strength matches 11 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 light[level=5] replace light
execute if score @s rpgloot.storm_spear_strength matches 13 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace light
execute if score @s rpgloot.storm_spear_strength matches 50.. run kill @s