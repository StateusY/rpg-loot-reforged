#called every second from 1sec.mcfunction

summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgc.mob_marker"]}
ride @s mount @n[type=armor_stand,limit=1,tag=rpgc.mob_marker]
execute on vehicle run data modify storage rpgc:temp mob.type set from entity @s Passengers[0].id
execute on vehicle run kill @s

function rpgc:-/mob/select with storage rpgc:temp mob
data modify storage rpgc:temp properties set from storage rpgc:registry temp.result

#if no special properties, run custom name
execute unless data storage rpgc:temp properties run function rpgc:-/mob/default

execute at @s run function rpgc:-/mob/properties/apply with storage rpgc:temp properties

data remove storage rpgc:registry temp

data remove storage rpgc:temp mob
tag @s add rpgc
