execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:items/basic/weapon/common/wood_bow
execute unless predicate rpgloot:crafting/wood/bow run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:items/basic/weapon/common/wood_bow
execute unless score .craft rpgloot.temp matches 1.. run return run tellraw @s {"color":"gray","text":"Not Enough Space"}
clear @s string 3
clear @s stick 3