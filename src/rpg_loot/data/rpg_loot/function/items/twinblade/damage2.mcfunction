function rpg_loot:items/twinblade/circle2
$function rpgc:z_api/damage {target:"@e[type=#rpgc:all,distance=..4] unless score @s rpgc.id matches $(id)",damage:[{type:fall,value:$(damage)}]}