execute unless function rpgc:isloaded run return fail
data modify storage rpgc:temp status set from storage rpgc:api status
#function rpgc:-/status_effects/tick with storage rpgc:temp status[0]

execute as @a at @s run function rpgc:-/player/tick
execute as @e[type=text_display,tag=rpgc.downed_timer] at @s run function rpgc:-/downed/tick
