execute store result storage rpgc:temp display.id int 1 run scoreboard players get @s rpgc.id
data modify storage rpgc:temp display.text set value '{"text":" ","font":"rpgc:hud_downed","color":"#010101"}'
function rpgc:-/player/hud/set with storage rpgc:temp display
data remove storage rpgc:temp display
