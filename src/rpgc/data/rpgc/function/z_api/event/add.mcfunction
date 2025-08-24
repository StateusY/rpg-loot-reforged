execute unless function rpgc:z_core/require_entity run return fail

$function rpgc:z_api/info {message:"Added event \"$(name)\" | from source: $(source) | listening to: $(listen) | calling: $(command)"}

function rpgc:z_core/event/prepare

$data remove storage rpgc:temp events[{name:"$(name)",source:"$(source)"}]
$data modify storage rpgc:temp events append value {name:"$(name)",source:"$(source)",listen:"$(listen)",command:"$(command)"}

$data remove storage rpgc:temp events_by_listen.$(listen)[{name:"$(name)",source:"$(source)"}]
$data modify storage rpgc:temp events_by_listen.$(listen) append value {name:"$(name)",source:"$(source)",command:"$(command)"}

function rpgc:z_core/event/apply
function rpgc:z_core/event/cleanup

