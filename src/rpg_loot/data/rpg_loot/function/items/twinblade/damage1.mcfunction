function rpg_loot:items/twinblade/circle1
$function rpgc:z_api/damage {target:"@e[type=#rpgc:all,distance=..2] unless score @s rpgc.id matches $(id)",damage:[{type:fall,value:$(damage)}]}