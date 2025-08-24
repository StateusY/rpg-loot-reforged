
scoreboard players reset @s rpgc.drop
tag @s remove rpgc.update_queued
function rpgc:z_core/player/data/context
function rpgc:z_core/player/data/load
function rpgc:z_core/player/updates/equipment_ with storage rpgc:player context.data.equipment
function rpgc:z_core/player/data/save

execute if data storage rpgc:temp equipment.attributes[0] run function rpgc:z_core/player/updates/macro/equipment/attribute with storage rpgc:temp equipment.attributes[0]
execute if data storage rpgc:temp equipment.events[0] run function rpgc:z_core/player/updates/macro/equipment/event with storage rpgc:temp equipment.events[0]
data remove storage rpgc:temp equipment
function rpgc:z_core/player/updates/mainhand