tag @s add rpgloot.twinstep_dashing
tag @s add rpgloot.twinstep_dash1
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 0.25 2
particle minecraft:snowflake ~ ~ ~ 0 0 0 0.25 25 normal
attribute @s gravity modifier add rpgloot:twinstep_low -0.25 add_multiplied_total
scoreboard players set $strength player_motion.api.launch 15000
execute facing ^ ^ ^-1 run function player_motion:api/launch_looking
execute facing ^ ^ ^-1 run function rpgloot:items/twinstep/ring
