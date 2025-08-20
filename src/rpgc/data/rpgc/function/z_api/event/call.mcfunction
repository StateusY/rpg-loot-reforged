execute unless function rpgc:z_core/require_entity run return fail

function rpgc:z_core/event/prepare

# Filter events
$data modify storage rpgc:temp events set from storage rpgc:temp events_by_listen.$(event)
execute if data storage rpgc:temp events[0] run function rpgc:z_core/event/call with storage rpgc:temp events[0]

function rpgc:z_core/event/cleanup

