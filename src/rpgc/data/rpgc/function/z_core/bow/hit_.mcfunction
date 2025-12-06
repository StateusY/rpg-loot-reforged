scoreboard players set .rpgc_bow rpgc.temp 1
$function rpgc:z_api/damage_remote {by:"@s",target:"@n[nbt={HurtTime:10s}]",remote:"@n[scores={rpgc.id=$(owner_id)}]"}
scoreboard players reset .rpgc_bow