# Initialize modifiers
data modify storage rpgc:temp current_modifiers set from storage rpgc:temp modifiers
data modify storage rpgc:temp attributes set value {}
data modify storage rpgc:temp attributes_modified set value []

# Iterate over modifiers
execute if data storage rpgc:temp current_modifiers[0] run function rpgc:z_core/attribute/apply_modifier with storage rpgc:temp current_modifiers[0]

# Iterate over modified attributes
execute if data storage rpgc:temp attributes_modified[0] run function rpgc:z_core/attribute/gather_attribute with storage rpgc:temp attributes_modified[0]

