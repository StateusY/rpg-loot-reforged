particle minecraft:item{item:"redstone_block"} ^-.1 ^.3 ^-.25 0 0 0 0.1 1 force
execute if score @s rpgc.temp matches 0 run return run function rpgc:-/downed/timer
execute as @n[type=player,tag=rpgc.downed] run function rpgc:-/downed/player
scoreboard players remove @s rpgc.temp 1

execute if entity @n[type=player,tag=rpgc.downed,predicate=rpgc:sneaking,distance=..1] run function rpgc:-/downed/timer
ride @n[type=player,tag=rpgc.downed] mount @s


execute on passengers run scoreboard players reset @s[tag=!rpgc.reviving] rpgc.reviving
