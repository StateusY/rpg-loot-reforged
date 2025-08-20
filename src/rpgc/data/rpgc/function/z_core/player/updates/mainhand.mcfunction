## !!!!!!! Important, removing modifiers is laggy

function rpgc:z_api/attribute/modifier/remove {name:mainhand}
function rpgc:z_api/event/remove_by_source {source:mainhand}
data modify storage rpgc:temp mainhand set from entity @s SelectedItem.components."minecraft:custom_data"
execute if data storage rpgc:temp mainhand.attributes[0] run function rpgc:z_core/player/updates/macro/attribute with storage rpgc:temp mainhand.attributes[0]
execute if data storage rpgc:temp mainhand.events[0] run function rpgc:z_core/player/updates/macro/event with storage rpgc:temp mainhand.events[0]

data remove storage rpgc:temp mainhand