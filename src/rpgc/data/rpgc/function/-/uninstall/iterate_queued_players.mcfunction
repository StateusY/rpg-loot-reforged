$execute as @a[nbt={UUID:$(UUID)}] run function rpgc:-/uninstall/reset_player with entity @s
data remove storage rpgc:uninstall queued_players_temp[0]
execute if data storage rpgc:uninstall queued_players_temp[0] run function rpgc:-/uninstall/iterate_queued_players with storage rpgc:uninstall queued_players_temp[0]
