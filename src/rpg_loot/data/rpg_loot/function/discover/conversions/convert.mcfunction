advancement revoke @s only rpg_loot:convert_vanilla_item

# THIS FUNCTION GIVES EACH ITEM RANDOM STATS BASED ON ITS ITEM ID BECAUSE BALANCE OR SMTH

data modify storage rpgloot:temp item set from entity @s SelectedItem

# catch if item already has been converted
execute if data storage rpgloot:temp item.components.minecraft:custom_data.has_stats run return fail 

particle flash ~ ~ ~
playsound minecraft:item.axe.scrape player @s ~ ~ ~ 200 1.75
playsound minecraft:block.bell.use player @s ~ ~ ~ 100 1.5
tellraw @s {"color":"gray","italic":true,"text":"The weapon's true nature reveals!"}

# replace old item with unknown template with proper stats
item replace entity @p weapon.mainhand with minecraft:air

# since wooden and stone tools are so easy to make, we dont want ppl to keep rerolling wooden and stone tools for stats
# however, the wooden and stone tools are still in thee rarity functions below
execute if data storage rpgloot:temp {item: {id: "minecraft:wooden_sword"}} run loot give @s loot rpg_loot:common/sword/wooden_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:stone_sword"}} run loot give @s loot rpg_loot:common/sword/stone_sword
execute if data storage rpgloot:temp {item: {id: "minecraft:wooden_sword"}} run return fail
execute if data storage rpgloot:temp {item: {id: "minecraft:stone_sword"}} run return fail

# rarity check
execute store result score @s rpg_loot.rarity_random_value run random value 1..100

# common
execute if score @s rpg_loot.rarity_random_value matches 1..50 run function rpg_loot:discover/conversions/common_items
# uncommon
execute if score @s rpg_loot.rarity_random_value matches 51..70 run function rpg_loot:discover/conversions/uncommon_items
# rare
execute if score @s rpg_loot.rarity_random_value matches 71..97 run function rpg_loot:discover/conversions/rare_items
# epic
execute if score @s rpg_loot.rarity_random_value matches 98..100 run function rpg_loot:discover/conversions/epic_items

# clean up 'item'
data remove storage rpgloot:temp item