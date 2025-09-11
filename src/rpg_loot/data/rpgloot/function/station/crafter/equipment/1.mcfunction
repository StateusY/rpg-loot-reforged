execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:items/weapon/common/wooden_sword

execute unless predicate rpgloot:crafting/wood/sword run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:items/weapon/common/wooden_sword
execute unless score .craft rpgloot.temp matches 1.. run return fail
clear @s #planks 2
clear @s stick 1