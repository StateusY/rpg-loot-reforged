loot replace entity @s weapon.offhand mine ~ ~-.5 ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]
execute store result entity @s data.id int 1 run scoreboard players get .id rpgloot.temp
execute store result score @s rpgloot.magnite_charge run scoreboard players get .id rpgloot.temp
execute on passengers run data modify entity @s block_state.Name set from entity @n[type=armor_stand,tag=rpgloot.magnite_orbit_new] equipment.offhand.id
item replace entity @s weapon.offhand with air
tag @s remove rpgloot.magnite_orbit_new