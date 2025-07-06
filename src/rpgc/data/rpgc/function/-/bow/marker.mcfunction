#called from bow/modify
data merge entity @s {Small:1b,Marker:1b,Invisible:1b,HandItems:[{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"rpgc:no","minecraft:enchantments":{levels:{"rpgc:arrow":1}}}},{}]}

data modify entity @s HandItems[0].components."minecraft:custom_data".owner set from storage rpgc:temp bow.owner
data modify entity @s HandItems[0].components."minecraft:custom_data".damage set from storage rpgc:temp bow.damage
data modify entity @s HandItems[0].components."minecraft:custom_data".events set from storage rpgc:temp bow.events
ride @s mount @n[type=arrow,tag=rpgc.arrow_current]
