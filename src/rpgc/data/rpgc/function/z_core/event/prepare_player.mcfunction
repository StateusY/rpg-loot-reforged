# Get player data
function rpgc:z_core/player/data/context
function rpgc:z_core/player/data/load

data modify storage rpgc:temp events set from storage rpgc:player context.data.events
data modify storage rpgc:temp events_by_listen set from storage rpgc:player context.data.events_by_listen

