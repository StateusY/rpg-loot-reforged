
execute store result storage rpgloot:temp ember.distance_neg double -0.025 run scoreboard players get @s rpgc.draw_percent
execute store result storage rpgloot:temp ember.distance_pos double 0.025 run scoreboard players get @s rpgc.draw_percent
$execute unless score @s rpg_loot.ember_charge matches 50.. rotated $(rotation) 0 positioned ^ ^ ^ run function rpg_loot:items/ember/particles/ring1 with storage rpgloot:temp ember
$execute if score @s rpg_loot.ember_charge matches 50.. rotated $(rotation) 0 positioned ^ ^ ^ run function rpg_loot:items/ember/particles/ring2 with storage rpgloot:temp ember
