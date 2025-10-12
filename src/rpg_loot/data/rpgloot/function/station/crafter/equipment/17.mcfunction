execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:items/basic/armor/common/flint_helmet
execute unless predicate rpgloot:crafting/stone/helmet run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:items/basic/armor/common/flint_helmet
execute unless score .craft rpgloot.temp matches 1.. run return run tellraw @s {"color":"gray","text":"Not Enough Space"}
clear @s flint 5