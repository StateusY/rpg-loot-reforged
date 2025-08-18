# Get player data
function rpgc:z_core/player/data/context
function rpgc:z_core/player/data/load

data modify storage rpgc:temp attributes set from storage rpgc:player context.data.attributes
data modify storage rpgc:temp modifiers set from storage rpgc:player context.data.modifiers

