tag @s remove rpgc.hud_needs_update

execute store result storage rpgc:temp hud.id int 1 run scoreboard players get @s rpgc.id
function rpgc:z_core/player/hud/build
#data remove storage rpgc:temp hud

