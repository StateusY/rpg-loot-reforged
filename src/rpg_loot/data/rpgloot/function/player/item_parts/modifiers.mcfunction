
$data modify storage rpgloot:temp parts.item.components.minecraft:attribute_modifiers append value {type:"$(id)",id:"$(name)",amount:$(value),operation:"$(type)",slot:"any"}
data remove storage rpgloot:temp parts.modifiers[0]
execute if data storage rpgloot:temp parts.modifiers[0].id run function rpgloot:player/item_parts/modifiers with storage rpgloot:temp parts.modifiers[0]