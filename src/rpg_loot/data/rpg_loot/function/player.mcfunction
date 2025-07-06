execute if score @s rpg_loot.zephyr_cd matches 1.. run scoreboard players remove @s rpg_loot.zephyr_cd 1
execute if entity @s[tag=rpg_loot.gale_tick] at @s run function rpg_loot:items/galeforged/tick