say call feet swap event
function rpgc:z_api/event/call {event:"feet_swap"}
function rpgc:z_api/attribute/modifier/remove_by_source {source:feet}
function rpgc:z_api/event/remove_by_source {source:feet}
data modify storage rpgc:player context.data.equipment.feet set value ""
data modify storage rpgc:player context.data.equipment.feet set from entity @s equipment.feet.components.minecraft:custom_data.id
data modify storage rpgc:temp equipment.attributes append from entity @s equipment.feet.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp equipment.events append from entity @s equipment.feet.components."minecraft:custom_data".events[]