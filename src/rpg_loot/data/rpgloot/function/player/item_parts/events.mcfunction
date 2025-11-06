data modify storage rpgloot:temp parts.item.components.minecraft:custom_data.events append from storage rpgc:registry temp.result.properties.events[0]
data remove storage rpgc:registry temp.result.properties.events[0]
execute if data storage rpgc:registry temp.result.properties.events[0] run function rpgloot:player/item_parts/events