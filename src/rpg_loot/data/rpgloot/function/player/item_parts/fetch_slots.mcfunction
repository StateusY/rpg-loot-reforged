tag @s remove rpgloot.item_queued
data remove storage rpgloot:temp slots
data modify storage rpgloot:temp slots append from entity @s Inventory[{components:{"minecraft:custom_data":{rpgloot_modified:false}}}].Slot
data modify storage rpgloot:temp current.slot set from storage rpgloot:temp slots[0]
function rpgloot:player/item_parts/roll_item with storage rpgloot:temp current