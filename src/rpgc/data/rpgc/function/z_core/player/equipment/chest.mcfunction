say call chest swap event
function rpgc:z_api/event/call {event:"chest_swap"}
function rpgc:z_api/attribute/modifier/remove_by_source {source:chest}
function rpgc:z_api/event/remove_by_source {source:chest}
data modify storage rpgc:player context.data.equipment.chest set value ""
data modify storage rpgc:player context.data.equipment.chest set from entity @s equipment.chest.components.minecraft:custom_data.id
data modify storage rpgc:temp equipment.attributes append from entity @s equipment.chest.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp equipment.events append from entity @s equipment.chest.components."minecraft:custom_data".events[]