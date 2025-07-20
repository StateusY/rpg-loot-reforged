scoreboard players reset #ember_was_full_drawn

execute if score @s rpgc.draw_percent matches 100.. run scoreboard players add @s rpg_loot.ember_charge 1
execute if score @s rpgc.draw_percent matches 100.. run scoreboard players set #ember_was_full_drawn rpg_loot.temp 1

execute if score @s rpgc.draw_percent matches 100.. anchored eyes positioned ^-.2 ^ ^0.25 run particle smoke ~ ~ ~ 0 0 0 0.01 1 force
#particle
scoreboard players add @s rpg_loot.ember_particle 2
execute if score @s rpgc.draw_percent matches 100.. run scoreboard players add @s rpg_loot.ember_particle 3
execute if score @s rpg_loot.ember_particle matches 91.. run scoreboard players set @s rpg_loot.ember_particle 0
execute store result storage rpgloot:temp ember.rotation int 1 run scoreboard players get @s rpg_loot.ember_particle
function rpg_loot:items/ember/particles/rotation with storage rpgloot:temp ember
