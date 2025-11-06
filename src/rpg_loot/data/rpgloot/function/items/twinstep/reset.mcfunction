execute unless score @s rpgloot.twinstep_cooldown matches 1.. run scoreboard players set @s[tag=rpgloot.twinstep_dash1_end] rpgloot.twinstep_cooldown 200
attribute @s safe_fall_distance modifier remove rpgloot.twinstep
tag @s remove rpgloot.twinstep_modified
tag @s remove rpgloot.twinstep_dash1
tag @s remove rpgloot.twinstep_dash1_end
tag @s remove rpgloot.twinstep_dash2
tag @s remove rpgloot.twinstep_dashing
tag @s remove rpgloot.twinstep_slam
scoreboard players reset .slam
scoreboard players reset .temp_id
attribute @s gravity modifier remove rpgloot:twinstep
attribute @s gravity modifier remove rpgloot:twinstep_low