#  <rpgc:z_core/tick>

execute if score @s player_left_game <= #1 constant run function rpgc:z_core/player/joined_game

# resets bow status on fire
execute if score @s rpgc.shot_arrow matches 1.. run function rpgc:z_core/bow/reset

execute if entity @s[tag=rpgc.bow_ran_once] run tag @s remove rpgc.bow_ran_once

scoreboard players enable @s rpgc.dialog

execute if score @s rpgc.dialog matches 1 run function rpgc:z_core/misc/stats_menu/trigger