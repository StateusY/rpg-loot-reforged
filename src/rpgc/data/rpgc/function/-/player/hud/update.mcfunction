execute if entity @s[tag=rpgc.downed] run return run function rpgc:-/player/hud/downed
execute store result storage rpgc:temp display.id int 1 run scoreboard players get @s rpgc.id
function rpgc:-/player/hud/calculate
function rpgc:-/player/hud/set with storage rpgc:temp display
data remove storage rpgc:temp display
