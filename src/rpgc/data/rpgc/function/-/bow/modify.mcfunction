
execute positioned ^ ^ ^1 summon armor_stand run function rpgc:-/bow/marker

#$tp @s ~ ~ ~ facing ^$(x) ^$(y) ^100
$execute facing ^$(x) ^$(y) ^100 run function rpgc:-/bow/apply_velocity with storage rpgc:temp bow
tag @s remove rpgc.arrow_current
