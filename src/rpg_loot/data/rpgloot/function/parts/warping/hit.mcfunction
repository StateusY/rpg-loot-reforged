# fail if mob is immune
execute as @n[type=#rpgc:all,tag=rpgc.current_victim] if entity @s[tag=rpgloot.warp_immune] as @n[type=#rpgc:all,tag=rpgc.current_attacker] run playsound minecraft:entity.glow_squid.hurt master @s ~ ~ ~ 0.48 1
execute as @n[type=#rpgc:all,tag=rpgc.current_victim] if entity @s[tag=rpgloot.warp_immune] run return fail

# summon warp point spot
execute as @n[type=#rpgc:all,tag=rpgc.current_victim] at @s run summon marker ~ ~ ~ {Tags:["rpgloot.warping_warp_point"]}

# damage mob
execute store result storage rpgloot:temp warping.damage double 0.0015 run scoreboard players get .dmg_out rpgc.temp
execute as @n[type=#rpgc:all,tag=rpgloot.warping_target] run function rpgloot:parts/warping/damage with storage rpgloot:temp warping

# tp
execute as @n[type=#rpgc:all,tag=rpgc.current_victim] run tp @s @n[type=#rpgc:all,tag=rpgc.current_attacker]
execute as @n[type=#rpgc:all,tag=rpgc.current_attacker] run tp @s @n[type=marker,tag=rpgloot.warping_warp_point]
execute as @n[type=#rpgc:all,tag=rpgc.current_attacker] run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 0.5 1

# kill warp point spot
kill @e[type=marker,tag=rpgloot.warping_warp_point]