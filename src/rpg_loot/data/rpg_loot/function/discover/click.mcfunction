advancement revoke @s only rpg_loot:unknown

# sets the current item to be modified
data modify storage rpgloot:temp item set from entity @s SelectedItem
scoreboard players set @s rpgc.click_cd 5

# the new item's components are in the custom_data of the parent unknown item, see the loot tables
data modify storage rpgloot:temp modify.model set from storage rpgloot:temp item.components.minecraft:custom_data.item_model
data modify storage rpgloot:temp modify.name set from storage rpgloot:temp item.components.minecraft:custom_data.contents.name
data modify storage rpgloot:temp modify.item set from storage rpgloot:temp item.components.minecraft:custom_data.contents.item

data modify storage rpgloot:temp modify.damage set value []
data modify storage rpgloot:temp data.damage set from storage rpgloot:temp item.components.minecraft:custom_data.contents.damage
execute if data storage rpgloot:temp data.damage[0] run function rpg_loot:discover/damage/recurse with storage rpgloot:temp data.damage[0]

data modify storage rpgloot:temp modify.attributes set value []
data modify storage rpgloot:temp data.attributes set from storage rpgloot:temp item.components.minecraft:custom_data.contents.attributes
execute if data storage rpgloot:temp data.attributes[0] run function rpg_loot:discover/attributes/recurse with storage rpgloot:temp data.attributes[0]

data modify storage rpgloot:temp modify.events set from storage rpgloot:temp item.components.minecraft:custom_data.contents.events
execute unless data storage rpgloot:temp modify.events run data modify storage rpgloot:temp modify.events set value []

data modify storage rpgloot:temp modify.lore set from storage rpgloot:temp item.components.minecraft:custom_data.contents.lore
execute unless data storage rpgloot:temp modify.lore run data modify storage rpgloot:temp modify.lore set value []

data modify storage rpgloot:temp modify.bow set from storage rpgloot:temp item.components.minecraft:custom_data.contents.bow
execute unless data storage rpgloot:temp modify.bow run data modify storage rpgloot:temp modify.bow set value {}

function rpg_loot:discover/modify with storage rpgloot:temp modify
function rpgc:-/player/update
data remove storage rpgloot:temp item
data remove storage rpgloot:temp data
data remove storage rpgloot:temp modify
