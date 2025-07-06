$data modify storage rpgc:uninstall queued_players append value {UUID:$(UUID)}
data remove storage rpgc:data player[0]
execute if data storage rpgc:data player[0] run function rpgc:-/uninstall/queue_player with storage rpgc:data player[0]
