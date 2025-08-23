say call legs swap event
function rpgc:z_api/event/call {event:"legs_swap"}
function rpgc:z_api/attribute/modifier/remove_by_source {source:legs}
function rpgc:z_api/event/remove_by_source {source:legs}
data modify storage rpgc:player context.data.equipment.legs set value ""
data modify storage rpgc:player context.data.equipment.legs set from entity @s equipment.legs.components.minecraft:custom_data.id
data modify storage rpgc:temp equipment.attributes append from entity @s equipment.legs.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp equipment.events append from entity @s equipment.legs.components."minecraft:custom_data".events[]