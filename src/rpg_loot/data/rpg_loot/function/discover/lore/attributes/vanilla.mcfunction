data modify storage rpgloot:temp modify.attribute set value []
data modify storage rpgloot:temp modify.attribute append from storage rpgloot:temp modify.vanilla_attributes[0]
function rpg_loot:discover/lore/attributes/resolve_vanilla_operation
data modify storage rpgloot:temp modify.attributes append from storage rpgloot:temp modify.attribute[0]
data remove storage rpgloot:temp modify.vanilla_attributes[0]
execute if data storage rpgloot:temp modify.vanilla_attributes[0] run function rpg_loot:discover/lore/attributes/vanilla
