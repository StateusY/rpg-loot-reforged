data remove storage rpgc:temp events_by_listen
execute unless function rpgc:z_core/require_entity run return fail

function rpgc:z_core/event/prepare

# Filter events
$execute unless data storage rpgc:temp events_by_listen.$(event) run return run function rpgc:z_api/info {message:"No listeners found for event $(event)"}
$data modify storage rpgc:temp events set from storage rpgc:temp events_by_listen.$(event)
execute if data storage rpgc:temp events[0] run function rpgc:z_core/event/call with storage rpgc:temp events[0]

function rpgc:z_core/event/cleanup

