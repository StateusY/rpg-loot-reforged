function rpgc:z_api/attribute/modifier/remove_by_name {name:parry}
tag @s remove rpgloot.parrying
execute if score @s rpgloot.parry_timer matches ..-1 run scoreboard players set @s rpgloot.parry_timer 20