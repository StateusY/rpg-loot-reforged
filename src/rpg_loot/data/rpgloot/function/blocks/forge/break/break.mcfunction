execute on passengers if entity @s[type=minecraft:item_display,tag=rpgloot.forge_item] if data entity @s item.components run function rpgloot:blocks/forge/item/item_macro_components with entity @s item
execute on passengers if entity @s[type=minecraft:item_display,tag=rpgloot.forge_item] unless data entity @s item.components run function rpgloot:blocks/forge/item/item_macro with entity @s item
execute on passengers run kill @s
execute as @e[type=interaction,distance=..0.65,tag=rpgloot.forge_interaction] run kill @s
kill @s

setblock ~ ~ ~ minecraft:air replace
playsound block.iron.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:smithing_table"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot rpgloot:blocks/forge