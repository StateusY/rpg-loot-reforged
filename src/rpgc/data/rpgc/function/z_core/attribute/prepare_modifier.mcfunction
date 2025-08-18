execute if entity @s[type=player] run return run function rpgc:z_core/attribute/prepare_modifier_player

# Get generic entity data
data modify storage rpgc:temp attributes set from entity @s data.attributes
data modify storage rpgc:temp modifiers set from entity @s data.modifiers

