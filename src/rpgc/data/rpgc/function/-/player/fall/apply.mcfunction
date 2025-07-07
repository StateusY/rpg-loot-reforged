
# fall.damage double changed from 1 to 0.1 to match mob fall damage
execute store result storage rpgc:temp fall.damage double 0.1 run scoreboard players get @s rpgc.fall
execute if block ~ ~-.1 ~ #rpgc:fall_resistant store result storage rpgc:temp fall.damage double 0.5 run data get storage rpgc:temp fall.damage
function rpgc:-/player/fall/damage with storage rpgc:temp fall