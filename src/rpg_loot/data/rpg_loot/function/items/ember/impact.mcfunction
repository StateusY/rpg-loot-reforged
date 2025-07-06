execute unless entity @s[tag=rpg_loot.ember_full_draw] run return fail
execute if block ~ ~ ~ water run return fail
execute on vehicle on origin run tag @s add rpg_loot.ember_owner
execute unless entity @s[tag=rpg_loot.ember_overcharge] run particle flame ~ ~ ~ 0 0 0 0.25 150 force @a
particle large_smoke ~ ~ ~ 0 0 0 0.15 50 force @a
particle lava ~ ~ ~ 2 2 2 0.5 20 force @a
execute if entity @s[tag=rpg_loot.ember_overcharge] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.25 150 force @a
execute unless entity @s[tag=rpg_loot.ember_overcharge] as @e[type=#rpgc:all,distance=..5,tag=!rpg_loot.ember_owner] at @s run function rpgc:damage {damage:[{type:'fire',amount:10}]}
execute if entity @s[tag=rpg_loot.ember_overcharge] as @e[type=#rpgc:all,distance=..8,tag=!rpg_loot.ember_owner] at @s run function rpgc:damage {damage:[{type:'fire',amount:20}]}
execute on vehicle on origin run tag @s remove rpg_loot.ember_owner