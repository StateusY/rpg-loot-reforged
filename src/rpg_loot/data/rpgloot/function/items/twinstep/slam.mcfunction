tag @s add rpgloot.twinstep_slam 
execute store result score @s rpgloot.twinstep_slam_start run data get entity @s Pos[1]
attribute @s gravity modifier add rpgloot:twinstep 100 add_multiplied_total