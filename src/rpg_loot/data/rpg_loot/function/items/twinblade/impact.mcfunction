execute store result score @s rpgloot.twinblade_slam_end run data get entity @s Pos[1]
scoreboard players operation @s rpgloot.twinblade_slam_end -= @s rpgloot.twinblade_slam_start
execute store result storage rpgloot:temp twinblade.fall double -0.4 run scoreboard players get @s rpgloot.twinblade_slam_end
scoreboard players reset @s rpgloot.twinblade_slam_end
scoreboard players reset @s rpgloot.twinblade_slam_start
scoreboard players operation .temp_id rpgloot.temp = @s rpgc.id
execute summon armor_stand run function rpg_loot:items/twinblade/marker
data remove storage rpgloot:temp twinblade