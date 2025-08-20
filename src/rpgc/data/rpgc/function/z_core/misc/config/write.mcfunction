dialog clear @s
$data merge storage rpgc:config $(data)
execute as @a run function rpgc:z_core/player/update_from_config with storage rpgc:config