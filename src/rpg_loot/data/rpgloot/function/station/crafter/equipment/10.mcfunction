execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:items/basic/armor/common/leather_boots
execute unless predicate rpgloot:crafting/wood/boots run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:items/basic/armor/common/leather_boots
execute unless score .craft rpgloot.temp matches 1.. run return run tellraw @s {"color":"gray","text":"Not Enough Space"}
clear @s leather 4