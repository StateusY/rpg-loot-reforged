# Multiply value by 100
data modify storage rpgc:temp value set value 100
$execute store result score value rpgc.temp run data get storage rpgc:temp value $(value)

# Accumulate modifier value and gather attribute
$scoreboard players operation $(id)_$(type) rpgc.temp += value rpgc.temp
$execute unless data storage rpgc:temp attributes_modified[{id:"$(id)"}] run data modify storage rpgc:temp attributes_modified append value {id:"$(id)"}

# Move to next modifier
data remove storage rpgc:temp current_modifiers[0]
execute if data storage rpgc:temp current_modifiers[0] run function rpgc:z_core/attribute/apply_modifier with storage rpgc:temp current_modifiers[0]

