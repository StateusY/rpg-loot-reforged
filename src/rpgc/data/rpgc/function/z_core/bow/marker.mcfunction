#called from bow/modify
data merge entity @s {Small:1b,Marker:1b,Invisible:1b,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgc:arrow":1}}}}}

# grab the data that was gotten from the player and store it in the marker. This lets the marker count as an actual entity to attack from
data modify entity @s data set from storage rpgc:temp bow

#data modify entity @s data.damage set from storage rpgc:output damage
execute unless data entity @s equipment.mainhand run function rpgc:z_api/error {message:"Arrow's brain did not get control item"}

ride @s mount @n[type=arrow,tag=rpgc.arrow_current]
