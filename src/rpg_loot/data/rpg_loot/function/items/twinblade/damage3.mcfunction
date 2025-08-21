execute positioned ~ ~ ~ run function rpg_loot:items/twinblade/circle3
$function rpgc:z_api/damage {target:"@e[type=#rpgc:all,distance=..6] unless score @s rpgc.id matches $(id)",damage:[{type:fall,value:$(damage)}]}
kill @s