execute unless function rpgc:z_core/require_entity run return fail

$function rpgc:z_api/info {message:"Removed event by source $(source)"}

function rpgc:z_core/event/prepare

data modify storage rpgc:temp events_iterate set value []
$data modify storage rpgc:temp events_iterate append from storage rpgc:temp events[{source:"$(source)"}]
execute if data storage rpgc:temp events_iterate[0] run function rpgc:z_core/event/remove_by_source with storage rpgc:temp events_iterate[0]

function rpgc:z_core/event/apply
function rpgc:z_core/event/cleanup

