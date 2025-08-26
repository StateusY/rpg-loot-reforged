tag @s add rpgloot.magnite
playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 0.5 2
tp @e[type=item,distance=..8] ~ ~ ~
scoreboard players set $strength player_motion.api.launch 10000
execute as @a at @s facing entity @n[type=item,tag=rpgloot.magnite] feet run function player_motion:api/launch_looking
tag @s remove rpgloot.magnite