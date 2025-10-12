execute if entity @s[gamemode=creative] run return run loot give @s loot rpgloot:items/basic/weapon/common/stone_sword
execute unless predicate rpgloot:crafting/stone/sword run return run tellraw @s {"color":"dark_red","text":"Not Enough Materials"}
execute store result score .craft rpgloot.temp run loot give @s loot rpgloot:items/basic/weapon/common/stone_sword
execute unless score .craft rpgloot.temp matches 1.. run return run tellraw @s {"color":"gray","text":"Not Enough Space"}
clear @s #stone_crafting_materials 2
clear @s stick 1