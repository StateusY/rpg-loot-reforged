#called from atk_cd/tick
function rpgc:-/player/storage/get with entity @s
function rpgc:-/event/call {type:"swap",source:"storage rpgc:data current"}
function rpgc:-/player/update
scoreboard players reset @s rpgc.draw_percent
scoreboard players reset @s rpgc.drawing