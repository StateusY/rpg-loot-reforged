#execute unless entity @s[type=player] unless data entity @s data.events_by_listen.hurt[{name:"shadow_retaliation"}] run function rpg_loot:items/shadow_crown/mob_compat
execute if score @s rpgloot.shade_count matches 1.. if predicate {condition:"minecraft:random_chance",chance:0.2} run playsound minecraft:entity.vex.ambient player @a ~ ~ ~ 1 2
execute if score @s rpgloot.shade_timer matches 10.. anchored eyes positioned ^1 ^ ^-1 run function rpg_loot:items/shadow_crown/shade
execute unless score @s rpgloot.shade_count matches 5.. run scoreboard players add @s rpgloot.shade_timer 1