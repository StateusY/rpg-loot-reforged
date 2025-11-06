$say $(slot)
$data modify storage rpgloot:temp parts.item set from entity @s Inventory[{Slot:$(slot)b}]


function rpgloot:player/item_parts/fetch_reg with storage rpgloot:temp parts.item.components.minecraft:custom_data
function rpgloot:player/item_parts/fetch_reg with storage rpgloot:temp parts.item.components.minecraft:custom_data
function rpgloot:player/item_parts/fetch_reg with storage rpgloot:temp parts.item.components.minecraft:custom_data
data remove storage rpgc:registry temp
#recurse 
data remove storage rpgloot:temp current
data remove storage rpgloot:temp slots[0]
execute unless data storage rpgloot:temp slots[0] run return fail
data modify storage rpgloot:temp current.slot set from storage rpgloot:temp slots[0]
function rpgloot:player/item_parts/roll_item with storage rpgloot:temp current