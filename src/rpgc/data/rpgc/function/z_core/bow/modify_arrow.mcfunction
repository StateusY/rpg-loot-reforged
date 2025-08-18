# From <rpgc:z_core/bow/bow_shot>/

function rpgc:z_core/bow/info/modify with storage rpgc:temp
execute positioned ~ -100 ~ summon armor_stand run function rpgc:z_core/bow/marker

$execute facing ^$(x) ^$(y) ^100 run function rpgc:z_core/bow/apply_velocity with storage rpgc:temp bow
tag @s remove rpgc.arrow_current
