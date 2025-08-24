# From <rpgc:z_core/bow/bow_shot>/

function rpgc:z_core/bow/info/modify with storage rpgc:temp
execute positioned ~ -100 ~ summon armor_stand run function rpgc:z_core/bow/marker
rotate @s ~ ~
$execute facing ^$(x) ^$(y) ^100 run function rpgc:z_core/bow/apply_velocity with storage rpgc:temp bow
execute store result entity @s Rotation[0] double -0.01 run data get entity @s Rotation[0] 100
execute store result entity @s Rotation[1] double -0.01 run data get entity @s Rotation[1] 100
tag @s remove rpgc.arrow_current
