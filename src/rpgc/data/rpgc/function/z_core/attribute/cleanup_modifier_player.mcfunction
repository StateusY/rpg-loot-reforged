# Save player data
data modify storage rpgc:player context.data.attributes set from storage rpgc:temp attributes
data modify storage rpgc:player context.data.modifiers set from storage rpgc:temp modifiers

function rpgc:z_core/player/data/save

