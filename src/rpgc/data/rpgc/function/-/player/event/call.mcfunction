execute unless entity @s[type=player] run return fail
function rpgc:-/player/storage/get
data modify storage rpgc:temp events.all set from storage rpgc:data current.events
data modify storage rpgc:temp events.filtered set value []
$data modify storage rpgc:temp events.filtered append from storage rpgc:temp events.all[{type:"$(type)"}]

execute if data storage rpgc:temp events.filtered[0] run function rpgc:-/event/recurse with storage rpgc:temp events.filtered[0]
data remove storage rpgc:temp events
