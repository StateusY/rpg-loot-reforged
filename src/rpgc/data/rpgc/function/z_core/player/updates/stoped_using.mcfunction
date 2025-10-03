
scoreboard players reset @s rpgc.using
execute at @s run function rpgc:z_api/event/call {event:use_end}
scoreboard players reset @s rpgc.stop_using
