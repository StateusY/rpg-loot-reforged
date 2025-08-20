#  <rpgc:z_core/tick>

execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:resistance":{amplifier:255}}}} run effect give @s resistance infinite 255 true

function rpgc:z_core/player/atk_cd/tick

execute if score @s died matches 1.. run function rpgc:z_core/player/spawn

execute if score @s player_left_game <= #1 constant run function rpgc:z_core/player/joined_game

# resets bow status on fire
execute if score @s rpgc.shot_arrow matches 1.. run function rpgc:z_core/bow/reset

execute if entity @s[tag=rpgc.bow_ran_once] run tag @s remove rpgc.bow_ran_once

scoreboard players enable @s rpgc.dialog

execute if score @s rpgc.dialog matches 1 run function rpgc:z_core/misc/stats_menu/trigger

function rpgc:z_core/player/equipment/mainhand

execute unless entity @s[tag=rpgc.unarmed] if predicate rpgc:unarmed run function rpgc:z_core/player/equipment/unarmed
execute if entity @s[tag=rpgc.unarmed] unless predicate rpgc:unarmed run function rpgc:z_core/player/equipment/armed