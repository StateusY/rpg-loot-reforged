execute positioned ~ ~ ~ run function rpgloot:items/twinblade/circle3
$execute as @e[type=#rpgc:all,distance=..6] unless score @s rpgc.id matches $(id) run function rpgc:z_api/damage {target:"@s",damage:[{type:fall,value:$(damage)}]}
scoreboard players reset @s
kill @s