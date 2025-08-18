execute unless data entity @s equipment.mainhand.id run item replace entity @s weapon.mainhand with minecraft:structure_void[minecraft:item_model="air"]
data modify entity @s equipment.mainhand.components."minecraft:enchantments" merge value {"rpgc:mob":1}
execute if data storage rpgc:temp properties.damage run function rpgc:z_core/mob/properties/misc/damage with storage rpgc:temp properties
