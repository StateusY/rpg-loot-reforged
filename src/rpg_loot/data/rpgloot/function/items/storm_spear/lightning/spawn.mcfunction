tag @s remove rpgloot.storm_spear_lightning_new
$tp @s ~ ~ ~ facing ~$(x) ~$(y) ~$(z)
$scoreboard players set @s rpgloot.storm_spear_charge $(strength)
execute if score @s rpgloot.storm_spear_charge matches 50.. run scoreboard players set @s rpgloot.storm_spear_charge 50
execute if score @s rpgloot.storm_spear_charge matches ..5 run scoreboard players set @s rpgloot.storm_spear_charge 5
execute if score .max rpgloot.storm_spear_charge matches 1 run tag @s add rpgloot.storm_spear_lightning_max
execute if score .high rpgloot.storm_spear_charge matches 1 run tag @s add rpgloot.storm_spear_lightning_high