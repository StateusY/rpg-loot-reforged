execute if block ~ ~ ~ water run return fail
execute on vehicle on origin run tag @s add rpg_loot.ember_owner
execute unless score @s rpg_loot.ember_charge matches 1.. if score #ember_was_full_drawn rpg_loot.temp matches 1 run tag @s add rpg_loot.ember_full_draw
execute unless score @s rpg_loot.ember_charge matches 1.. unless entity @s[tag=rpg_loot.ember_overcharge] if score .ember rpg_loot.temp matches 1 run tag @s add rpg_loot.ember_overcharge
scoreboard players reset .ember rpg_loot.temp
scoreboard players add @s rpg_loot.ember_charge 1
execute if score @s rpg_loot.ember_charge matches 1 on vehicle run data merge entity @s {NoGravity:1b}
execute if score @s rpg_loot.ember_charge matches 30 on vehicle run data merge entity @s {NoGravity:0b}
execute as @e[type=#rpgc:all,distance=..4,tag=!rpg_loot.ember_owner] at @s run function rpgc:damage {damage:[{type:'fire',amount:.5}]}
particle flame ~ ~-.35 ~ 0.1 0.1 0.1 0 3 force
execute if entity @s[tag=rpg_loot.ember_overcharge] run particle soul_fire_flame ~ ~-.35 ~ 0.1 0.1 0.1 0.05 2 force
execute on vehicle on origin run tag @s remove rpg_loot.ember_owner
