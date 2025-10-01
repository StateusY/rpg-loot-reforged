
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
execute if entity @s[tag=rpgc.head_swap] run function rpgc:z_api/event/call {event:"head_equip"}
execute if entity @s[tag=rpgc.head_swap] run tag @s remove rpgc.head_swap
execute if entity @s[tag=rpgc.chest_swap] run function rpgc:z_api/event/call {event:"chest_equip"}
execute if entity @s[tag=rpgc.chest_swap] run tag @s remove rpgc.chest_swap

execute if entity @s[tag=rpgc.legs_swap] run function rpgc:z_api/event/call {event:"legs_equip"}
execute if entity @s[tag=rpgc.legs_swap] run tag @s remove rpgc.legs_swap

execute if entity @s[tag=rpgc.feet_swap] run function rpgc:z_api/event/call {event:"feet_equip"}
execute if entity @s[tag=rpgc.feet_swap] run tag @s remove rpgc.feet_swap