execute if entity @s[type=player] run return run function rpgc:z_core/event/prepare_player

# Get generic entity data
data modify storage rpgc:temp events set from entity @s data.events
data modify storage rpgc:temp events_by_listen set from entity @s data.events_by_listen

