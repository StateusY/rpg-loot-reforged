dialog clear @s
$data merge storage rpgc:config $(data)
execute as @a run function rpgc:z_core/player/updates/config with storage rpgc:config