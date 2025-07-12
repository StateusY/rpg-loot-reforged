# THIS IS THE LIST OF ALL POSSIBLE LEGENDARY ITEM CONVERSIONS

# swords
execute if data storage rpgloot:temp {item: {id: "minecraft:wooden_sword"}} run loot give @s loot rpg_loot:epic/sword/wooden_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:stone_sword"}} run loot give @s loot rpg_loot:epic/sword/stone_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:iron_sword"}} run loot give @s loot rpg_loot:epic/sword/iron_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:gold_sword"}} run loot give @s loot rpg_loot:epic/sword/gold_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:diamond_sword"}} run loot give @s loot rpg_loot:epic/sword/diamond_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:netherite_sword"}} run loot give @s loot rpg_loot:epic/sword/netherite_sword
# axes
execute if data storage rpgloot:temp {item: {id: "minecraft:iron_axe"}} run loot give @s loot rpg_loot:epic/axe/iron_axe
execute if data storage rpgloot:temp {item: {id: "minecraft:gold_axe"}} run loot give @s loot rpg_loot:epic/axe/gold_axe
execute if data storage rpgloot:temp {item: {id: "minecraft:diamond_axe"}} run loot give @s loot rpg_loot:epic/axe/diamond_axe
execute if data storage rpgloot:temp {item: {id: "minecraft:netherite_axe"}} run loot give @s loot rpg_loot:epic/axe/netherite_axe
# pickaxes
execute if data storage rpgloot:temp {item: {id: "minecraft:iron_pickaxe"}} run loot give @s loot rpg_loot:epic/pickaxe/iron_pickaxe
execute if data storage rpgloot:temp {item: {id: "minecraft:gold_pickaxe"}} run loot give @s loot rpg_loot:epic/pickaxe/gold_pickaxe
execute if data storage rpgloot:temp {item: {id: "minecraft:diamond_pickaxe"}} run loot give @s loot rpg_loot:epic/pickaxe/diamond_pickaxe
execute if data storage rpgloot:temp {item: {id: "minecraft:netherite_pickaxe"}} run loot give @s loot rpg_loot:epic/pickaxe/netherite_pickaxe

# clean up 'item'
data remove storage rpgloot:temp item