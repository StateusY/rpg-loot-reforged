data merge entity @s {Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["rpgloot.twinstep_marker"],equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgloot:backend/items/twinstep_crater":1}}}}}
data modify entity @s data.twinstep.damage set from storage rpgloot:temp twinstep.fall
execute store result entity @s data.twinstep.id int 1 run scoreboard players get .temp_id rpgloot.temp
