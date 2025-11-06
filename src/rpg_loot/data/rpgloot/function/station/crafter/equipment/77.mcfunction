execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:items/basic/armor/common/cobalt_helmet
execute unless predicate rpgloot:crafting/cobalt/helmet run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:items/basic/armor/common/cobalt_helmet
execute unless score .craft rpgloot.temp matches 1.. run return run tellraw @s {"color":"gray","text":"Not Enough Space"}
clear @s minecraft:poisonous_potato[minecraft:custom_data~{"rpgloot":{"ingredient":{"type":"cobalt_ingot"}}}] 10