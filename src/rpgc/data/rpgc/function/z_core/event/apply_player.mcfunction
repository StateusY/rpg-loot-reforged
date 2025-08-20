# Save player data
data modify storage rpgc:player context.data.events set from storage rpgc:temp events
data modify storage rpgc:player context.data.events_by_listen set from storage rpgc:temp events_by_listen

function rpgc:z_core/player/data/save

