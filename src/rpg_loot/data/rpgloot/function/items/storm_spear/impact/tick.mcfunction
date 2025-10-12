
scoreboard players add @s rpgloot.storm_spear_strength 1
execute unless score @s rpgloot.storm_spear_strength matches 6.. run return fail
execute on passengers run kill @s
kill @s
