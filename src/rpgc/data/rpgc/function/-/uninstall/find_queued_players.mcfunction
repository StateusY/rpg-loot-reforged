execute unless data storage rpgc:uninstall queued_players[0] run return 0
data modify storage rpgc:uninstall queued_players_temp set from storage rpgc:uninstall queued_players
execute if data storage rpgc:uninstall queued_players_temp[0] run function rpgc:-/uninstall/iterate_queued_players with storage rpgc:uninstall queued_players_temp[0]
data remove storage rpgc:uninstall queued_players_temp
