execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:items/basic/tool/common/cobalt_axe
execute unless predicate rpgloot:crafting/cobalt/axe run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:items/basic/tool/common/cobalt_axe
execute unless score .craft rpgloot.temp matches 1.. run return run tellraw @s {"color":"gray","text":"Not Enough Space"}
clear @s minecraft:poisonous_potato[minecraft:custom_data~{"rpgloot":{"ingredient":{"type":"cobalt_ingot"}}}] 20
clear @s stick 4