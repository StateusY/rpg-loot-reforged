# THIS IS THE LIST OF ALL POSSIBLE LEGENDARY ITEM CONVERSIONS

# swords
execute if data storage rpgloot:temp {item: {id: "minecraft:wooden_sword"}} run loot give @s loot rpg_loot:legendary/wooden_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:stone_sword"}} run loot give @s loot rpg_loot:legendary/stone_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:iron_sword"}} run loot give @s loot rpg_loot:legendary/iron_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:gold_sword"}} run loot give @s loot rpg_loot:legendary/gold_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:diamond_sword"}} run loot give @s loot rpg_loot:legendary/diamond_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:netherite_sword"}} run loot give @s loot rpg_loot:legendary/netherite_sword


# clean up 'item'
data remove storage rpgloot:temp item