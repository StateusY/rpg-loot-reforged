execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:items/basic/tool/common/iron_hoe
execute unless predicate rpgloot:crafting/iron/hoe run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:items/basic/tool/common/iron_hoe
execute unless score .craft rpgloot.temp matches 1.. run return run tellraw @s {"color":"gray","text":"Not Enough Space"}
clear @s iron_ingot 14
clear @s stick 4