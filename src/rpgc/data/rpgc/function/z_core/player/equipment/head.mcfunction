function rpgc:z_api/event/call {event:"head_swap"}
function rpgc:z_api/attribute/modifier/remove_by_source {source:head}
function rpgc:z_api/event/remove_by_source {source:head}
data modify storage rpgc:player context.data.equipment.head set value ""
data modify storage rpgc:player context.data.equipment.head set from entity @s equipment.head.components.minecraft:custom_data.id
data modify storage rpgc:temp equipment.attributes append from entity @s equipment.head.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp equipment.events append from entity @s equipment.head.components."minecraft:custom_data".events[]