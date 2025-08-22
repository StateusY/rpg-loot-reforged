tag @s remove rpgc.update_queued
function rpgc:z_api/attribute/modifier/remove_by_source {source:equipment}
function rpgc:z_api/event/remove_by_source {source:equipment}
data modify storage rpgc:temp equipment.attributes append from entity @s equipment.head.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp equipment.events append from entity @s equipment.head.components."minecraft:custom_data".events[]
data modify storage rpgc:temp equipment.attributes append from entity @s equipment.chest.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp equipment.events append from entity @s equipment.chest.components."minecraft:custom_data".events[]
data modify storage rpgc:temp equipment.attributes append from entity @s equipment.legs.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp equipment.events append from entity @s equipment.legs.components."minecraft:custom_data".events[]
data modify storage rpgc:temp equipment.attributes append from entity @s equipment.feet.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp equipment.events append from entity @s equipment.feet.components."minecraft:custom_data".events[]

execute if data storage rpgc:temp equipment.attributes[0] run function rpgc:z_core/player/updates/macro/equipment/attribute with storage rpgc:temp equipment.attributes[0]
execute if data storage rpgc:temp equipment.events[0] run function rpgc:z_core/player/updates/macro/equipment/event with storage rpgc:temp equipment.events[0]
data remove storage rpgc:temp equipment
function rpgc:z_core/player/updates/mainhand