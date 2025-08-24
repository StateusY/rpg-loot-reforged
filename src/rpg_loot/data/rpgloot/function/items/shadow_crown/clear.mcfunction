
scoreboard players operation .id rpgc.temp = @s rpgc.id
execute as @e[type=item_display,tag=rpgloot.shade] if score @s rpgc.id = .id rpgc.temp run function rpgloot:items/shadow_crown/shade/reset
scoreboard players reset @s rpgloot.shade_count
scoreboard players reset @s rpgloot.shade_timer