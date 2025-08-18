execute if entity @s[type=player] run return run function rpgc:z_core/attribute/cleanup_modifier_player

# Store generic entity data
data modify entity @s data.attributes set from storage rpgc:temp attributes
data modify entity @s data.modifiers set from storage rpgc:temp modifiers

