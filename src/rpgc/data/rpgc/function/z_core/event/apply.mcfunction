execute if entity @s[type=player] run return run function rpgc:z_core/event/apply_player

# Store generic entity data
data modify entity @s data.events set from storage rpgc:temp events
data modify entity @s data.events_by_listen set from storage rpgc:temp events_by_listen

