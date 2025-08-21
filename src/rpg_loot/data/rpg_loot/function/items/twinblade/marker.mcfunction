data merge entity @s {Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,Tags:["rpgloot.twinblade_marker"],equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpg_loot:backend/items/twinblade_crater":1}}}}}
data modify entity @s data.twinblade.damage set from storage rpgloot:temp twinblade.fall
execute store result entity @s data.twinblade.id int 1 run scoreboard players get .temp_id rpgloot.temp
