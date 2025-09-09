execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:common/tools/wooden_axe
execute unless predicate rpgloot:crafting/wood/axe run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:common/tools/wooden_axe
execute unless score .craft rpgloot.temp matches 1.. run return fail
clear @s #planks 3
clear @s stick 2