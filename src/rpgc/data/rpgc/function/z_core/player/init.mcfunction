# Give new player an ID
execute unless score @s rpgc.id matches 0.. run function rpgc:z_core/player/new_id

# Get player context
function rpgc:z_core/player/data/context

# Initialize and save player's data
data modify storage rpgc:player context.data set value {attributes:{},modifiers:[],events:[],events_by_listen:{}}
function rpgc:z_core/player/data/save

function rrpgc:z_core/player/updates/config