tag @s remove rpgloot.twinstep_marker_current
data modify entity @s data.twinstep.damage set from storage rpgloot:temp twinstep.fall
execute store result entity @s data.twinstep.id int 1 run scoreboard players get .temp_id rpgloot.temp
