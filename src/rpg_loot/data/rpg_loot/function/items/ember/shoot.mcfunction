
execute if score @s rpg_loot.ember_charge matches 50.. run scoreboard players set .ember rpg_loot.temp 1
execute if score @s rpg_loot.ember_charge matches 50.. anchored eyes positioned ^ ^ ^1 run function rpg_loot:items/ember/particles/boom
execute if score @s rpg_loot.ember_charge matches 50.. anchored eyes positioned ^ ^ ^3 run function rpg_loot:items/ember/particles/boom
execute if score @s rpg_loot.ember_charge matches 50.. anchored eyes positioned ^ ^ ^5 run function rpg_loot:items/ember/particles/boom
scoreboard players reset @s rpg_loot.ember_charge
scoreboard players reset @s rpg_loot.ember_particle
