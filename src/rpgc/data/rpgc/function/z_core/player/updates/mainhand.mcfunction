
function rpgc:z_api/attribute/modifier/remove_by_source {source:weapon}
function rpgc:z_api/event/remove_by_source {source:weapon}
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"rpgc:weapon"}]}}}}},{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{predicates:{"minecraft:enchantments":[{enchantments:"rpgc:bow"}]}}}}}]} run data modify storage rpgc:temp mainhand set from entity @s SelectedItem.components."minecraft:custom_data"
execute if data storage rpgc:temp mainhand.attributes[0] run function rpgc:z_core/player/updates/macro/weapon/attribute with storage rpgc:temp mainhand.attributes[0]
execute if data storage rpgc:temp mainhand.events[0] run function rpgc:z_core/player/updates/macro/weapon/event with storage rpgc:temp mainhand.events[0]

data remove storage rpgc:temp mainhand
execute unless predicate rpgc:unarmed run function rpgc:z_core/player/equipment/armed