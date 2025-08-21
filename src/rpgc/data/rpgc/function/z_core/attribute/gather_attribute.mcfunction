# Initialize value to base
$execute store result score value rpgc.temp run data get storage rpgc:registry attribute.$(id).base 100


# Apply add modifiers
$scoreboard players operation value rpgc.temp += $(id)_add rpgc.temp

# Normalize mul modifiers
$scoreboard players add $(id)_mul rpgc.temp 100

# Apply mul modifiers
$scoreboard players operation value rpgc.temp *= $(id)_mul rpgc.temp

# Normalize result
scoreboard players operation value rpgc.temp /= #100 constant


# Store value to attributes
$execute store result storage rpgc:temp attributes.$(id) double 0.01 run scoreboard players get value rpgc.temp

# Cleanup scores
$scoreboard players reset $(id)_add rpgc.temp
$scoreboard players reset $(id)_mul rpgc.temp

# Move to next attribute
data remove storage rpgc:temp attributes_modified[0]
execute if data storage rpgc:temp attributes_modified[0] run function rpgc:z_core/attribute/gather_attribute with storage rpgc:temp attributes_modified[0]

