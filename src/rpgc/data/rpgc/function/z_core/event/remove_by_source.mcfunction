$data remove storage rpgc:temp events[{source:"$(source)",listen:"$(listen)"}]
$data remove storage rpgc:temp events_by_listen.$(listen)[{source:"$(source)"}]

$execute unless data storage rpgc:temp events_by_listen.$(listen)[0] run data remove storage rpgc:temp events_by_listen.$(listen)

data remove storage rpgc:temp events_iterate[0]
execute if data storage rpgc:temp events_iterate[0] run function rpgc:z_core/event/remove_by_source with storage rpgc:temp events_iterate[0]

