
execute store result storage rpgc:temp fall.damage double 1 run scoreboard players get @s rpgc.fall
execute if block ~ ~-.1 ~ #rpgc:fall_resistant store result storage rpgc:temp fall.damage double 0.5 run data get storage rpgc:temp fall.damage
function rpgc:-/player/fall/damage with storage rpgc:temp fall