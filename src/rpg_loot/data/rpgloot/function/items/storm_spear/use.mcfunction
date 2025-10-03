
scoreboard players add @s rpgloot.storm_spear_charge 1
execute if score @s rpgloot.storm_spear_charge matches 1 run function rpgloot:items/storm_spear/start_charge
execute if score @s rpgloot.storm_spear_charge matches 100.. run scoreboard players set @s rpgloot.storm_spear_charge 200
execute if score @s rpgloot.storm_spear_charge matches 50.. run scoreboard players set .high rpgloot.storm_spear_charge 1
execute if score @s rpgloot.storm_spear_charge matches 100.. run scoreboard players set .max rpgloot.storm_spear_charge 1
execute if predicate {condition:"minecraft:random_chance",chance:0.25} positioned ~ ~1 ~ run function rpgloot:items/storm_spear/lightning/spawn_step
scoreboard players reset .max rpgloot.storm_spear_charge
scoreboard players reset .high rpgloot.storm_spear_charge