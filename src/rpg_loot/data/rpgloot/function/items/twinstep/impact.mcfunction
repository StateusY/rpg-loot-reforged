execute store result score @s rpgloot.twinstep_slam_end run data get entity @s Pos[1]
scoreboard players operation @s rpgloot.twinstep_slam_end -= @s rpgloot.twinstep_slam_start
execute store result storage rpgloot:temp twinstep.fall double -0.4 run scoreboard players get @s rpgloot.twinstep_slam_end
scoreboard players reset @s rpgloot.twinstep_slam_end
scoreboard players reset @s rpgloot.twinstep_slam_start
scoreboard players operation .temp_id rpgloot.temp = @s rpgc.id
summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["rpgloot.twinstep_marker","rpgloot.twinstep_marker_current"],equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgloot:backend/items/twinstep_crater":1}}}}}
execute as @n[type=armor_stand,tag=rpgloot.twinstep_marker_current] run function rpgloot:items/twinstep/marker
data remove storage rpgloot:temp twinstep
scoreboard players reset .slam
scoreboard players reset .temp_id