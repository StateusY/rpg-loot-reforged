scoreboard players remove .distance rpgc.temp 1

execute positioned ~-0.05 ~-0.05 ~-0.05 as @n[dx=0,dy=0,dz=0,type=!player] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0,dy=0,dz=0] run return run function rpgc:-/player/nametag/name
execute if score .distance rpgc.temp matches 0 run return fail
execute positioned ^ ^ ^.05 run function rpgc:-/player/nametag/recurse
