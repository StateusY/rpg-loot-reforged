execute unless data entity @s HandItems[0].id run item replace entity @s weapon.mainhand with minecraft:structure_void[minecraft:item_model="rpgc:no"]
data modify entity @s HandItems[0].components.minecraft:enchantments.levels merge value {"rpgc:mob":1}
execute if data storage rpgc:temp properties.damage run function rpgc:-/mob/properties/misc/damage with storage rpgc:temp properties
