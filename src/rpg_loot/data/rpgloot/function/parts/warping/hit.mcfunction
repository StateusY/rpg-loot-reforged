# summon warp point spot
execute as @n[type=#rpgc:all,tag=rpgc.current_victim] at @s run summon marker ~ ~ ~ {Tags:["rpgloot.warping_warp_point"]}
# tp
execute as @n[type=#rpgc:all,tag=rpgc.current_victim] run tp @s @n[type=#rpgc:all,tag=rpgc.current_attacker]
execute as @n[type=#rpgc:all,tag=rpgc.current_attacker] run tp @s @n[type=marker,tag=rpgloot.warping_warp_point]
# kill warp point spot
kill @e[type=marker,tag=rpgloot.warping_warp_point]