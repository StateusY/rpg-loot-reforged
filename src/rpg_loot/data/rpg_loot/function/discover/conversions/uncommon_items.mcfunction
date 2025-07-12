# THIS IS THE LIST OF ALL POSSIBLE UNCOMMON ITEM CONVERSIONS

# swords
execute if data storage rpgloot:temp {item: {id: "minecraft:wooden_sword"}} run loot give @s loot rpg_loot:uncommon/sword/wooden_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:stone_sword"}} run loot give @s loot rpg_loot:uncommon/sword/stone_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:iron_sword"}} run loot give @s loot rpg_loot:uncommon/sword/iron_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:gold_sword"}} run loot give @s loot rpg_loot:uncommon/sword/gold_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:diamond_sword"}} run loot give @s loot rpg_loot:uncommon/sword/diamond_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:netherite_sword"}} run loot give @s loot rpg_loot:uncommon/sword/netherite_sword
# axes
execute if data storage rpgloot:temp {item: {id: "minecraft:iron_axe"}} run loot give @s loot rpg_loot:uncommon/axe/iron_axe
execute if data storage rpgloot:temp {item: {id: "minecraft:gold_axe"}} run loot give @s loot rpg_loot:uncommon/axe/gold_axe
execute if data storage rpgloot:temp {item: {id: "minecraft:diamond_axe"}} run loot give @s loot rpg_loot:uncommon/axe/diamond_axe
execute if data storage rpgloot:temp {item: {id: "minecraft:netherite_axe"}} run loot give @s loot rpg_loot:uncommon/axe/netherite_axe
# pickaxes
execute if data storage rpgloot:temp {item: {id: "minecraft:iron_pickaxe"}} run loot give @s loot rpg_loot:uncommon/pickaxe/iron_pickaxe
execute if data storage rpgloot:temp {item: {id: "minecraft:gold_pickaxe"}} run loot give @s loot rpg_loot:uncommon/pickaxe/gold_pickaxe
execute if data storage rpgloot:temp {item: {id: "minecraft:diamond_pickaxe"}} run loot give @s loot rpg_loot:uncommon/pickaxe/diamond_pickaxe
execute if data storage rpgloot:temp {item: {id: "minecraft:netherite_pickaxe"}} run loot give @s loot rpg_loot:uncommon/pickaxe/netherite_pickaxe

# clean up 'item'
data remove storage rpgloot:temp item