$$(run)
data remove storage rpgc:temp events.filtered[0]
execute if data storage rpgc:temp events.filtered[0] run function rpgc:-/event/recurse with storage rpgc:temp events.filtered[0]
