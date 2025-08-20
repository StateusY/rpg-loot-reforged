#called from bow/modify
data merge entity @s {Small:1b,Marker:1b,Invisible:1b,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgc:arrow":1}}}}}
execute store result entity @s data.crit_stage int 1 run data get storage rpgc:output crit_stage
data modify entity @s data.damage set from storage rpgc:output damage
execute unless data entity @s equipment.mainhand run function rpgc:z_api/error {message:"Arrow's brain did not get control item"}
data modify entity @s SelectedItem.components."minecraft:custom_data".owner set from storage rpgc:temp bow.owner
data modify entity @s SelectedItem.components."minecraft:custom_data".damage set from storage rpgc:temp bow.damage
data modify entity @s SelectedItem.components."minecraft:custom_data".events set from storage rpgc:temp bow.events
ride @s mount @n[type=arrow,tag=rpgc.arrow_current]
