$data remove storage rpgc:temp events[{name:"$(name)",listen:"$(listen)"}]
$data remove storage rpgc:temp events_by_listen.$(listen)[{name:"$(name)"}]

$execute unless data storage rpgc:temp events_by_listen.$(listen)[0] run data remove storage rpgc:temp events_by_listen.$(listen)

data remove storage rpgc:temp events_iterate[0]
execute if data storage rpgc:temp events_iterate[0] run function rpgc:z_core/event/remove_by_name with storage rpgc:temp events_iterate[0]

