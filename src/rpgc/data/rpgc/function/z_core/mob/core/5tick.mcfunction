execute if entity @s[type=#rpgc:boss] run execute store result entity @s Health double 0.01 run scoreboard players get @s rpgc.hp
function rpgc:z_api/event/call {event:mob_tick}