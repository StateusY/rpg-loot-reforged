#> from: rpgc:-/bow/hit
execute as @p[tag=rpgc.player_shot] at @s run return run function rpgc:damage with storage rpgc:temp damage
execute as @n[type=#rpgc:mob,nbt={HurtTime:10s}] at @s run return run function rpgc:damage with storage rpgc:temp damage
data remove storage rpgc:temp damage