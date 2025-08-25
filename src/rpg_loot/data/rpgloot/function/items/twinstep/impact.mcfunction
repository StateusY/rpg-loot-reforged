execute store result score @s rpgloot.twinstep_slam_end run data get entity @s Pos[1]
scoreboard players operation @s rpgloot.twinstep_slam_end -= @s rpgloot.twinstep_slam_start
execute store result storage rpgloot:temp twinstep.fall double -0.4 run scoreboard players get @s rpgloot.twinstep_slam_end
scoreboard players reset @s rpgloot.twinstep_slam_end
scoreboard players reset @s rpgloot.twinstep_slam_start
scoreboard players operation .temp_id rpgloot.temp = @s rpgc.id
execute summon armor_stand run function rpgloot:items/twinstep/marker
data remove storage rpgloot:temp twinstep
scoreboard players reset .slam
scoreboard players reset .temp_id