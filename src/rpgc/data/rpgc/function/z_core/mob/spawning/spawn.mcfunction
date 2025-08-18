summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgc.mob_marker"]}
ride @s mount @n[type=armor_stand,limit=1,tag=rpgc.mob_marker]
execute on vehicle run data modify storage rpgc:temp mob.type set from entity @s Passengers[0].id
execute on vehicle run kill @s
data modify storage rpgc:temp mob.tag set from entity @s equipment.mainhand.components.minecraft:custom_data.tag
data remove entity @s equipment.mainhand
function rpgc:z_core/mob/spawning/step with storage rpgc:temp mob
function rpgc:z_core/mob/properties/apply with storage rpgc:temp properties
data remove storage rpgc:registry temp

tag @s add rpgc
