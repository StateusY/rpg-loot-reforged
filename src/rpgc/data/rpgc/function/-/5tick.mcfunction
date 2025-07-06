schedule function rpgc:-/5tick 5 replace

execute as @a at @s run function rpgc:-/player/5tick
execute as @e[type=text_display,tag=rpgc.hp_display] at @s run function rpgc:-/mob/display/bar_tick
execute if function rpgc:isloaded run function rpgc:-/uninstall/find_queued_players
