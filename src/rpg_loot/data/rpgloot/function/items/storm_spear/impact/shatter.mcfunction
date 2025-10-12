execute store result storage rpgloot:temp shatter.x int 3 run random value -30..30
execute store result storage rpgloot:temp shatter.y int 0.3 run random value -30..30
function rpgloot:items/storm_spear/impact/rotate with storage rpgloot:temp shatter
execute on vehicle at @s run loot replace entity @s weapon.offhand mine ~ ~-1 ~ minecraft:diamond_pickaxe[enchantments={silk_touch:1}]
execute on vehicle run tag @s add rpgloot.storm_spear_block_current

function rpgloot:items/storm_spear/impact/modify with entity @n[type=armor_stand,tag=rpgloot.storm_spear_block_current] equipment.offhand
execute on vehicle run tag @s remove rpgloot.storm_spear_block_current
execute on vehicle run item replace entity @s weapon.offhand with air