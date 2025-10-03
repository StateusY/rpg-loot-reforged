
scoreboard players add @s rpgloot.storm_spear_strength 1
scoreboard players operation .ray rpgloot.temp = @s rpgloot.storm_spear_charge
execute if score @s rpgloot.storm_spear_strength matches 1 run function rpgloot:items/storm_spear/lightning/ray
execute if score @s rpgloot.storm_spear_strength matches 2 run function rpgloot:items/storm_spear/lightning/ray
execute if score @s rpgloot.storm_spear_strength matches 3 run function rpgloot:items/storm_spear/lightning/ray
execute if score @s rpgloot.storm_spear_strength matches 4.. run kill @s
