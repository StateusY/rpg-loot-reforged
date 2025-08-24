#called from bow/modify
data merge entity @s {Small:1b,Marker:1b,Invisible:1b,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgc:arrow":1}}}}}
function rpgc:z_core/event/apply
# grab the data that was gotten from the player and store it in the marker. This lets the marker count as an actual entity to attack from
data modify entity @s data set from storage rpgc:temp bow
execute store result entity @s data.owner_id int 1 run scoreboard players get .current_id rpgc.temp

execute unless data entity @s equipment.mainhand run function rpgc:z_api/error {message:"Arrow's marker did not get control item"}

ride @s mount @n[type=arrow,tag=rpgc.arrow_current]
