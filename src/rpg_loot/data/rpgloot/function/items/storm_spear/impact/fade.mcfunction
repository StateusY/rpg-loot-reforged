scoreboard players add @s rpgloot.storm_spear_charge 1

execute if score @s rpgloot.storm_spear_charge matches 50.. on passengers run data merge entity @s {interpolation_duration:50,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[0f,0f,0f]}}
execute if score @s rpgloot.storm_spear_charge matches 100.. on passengers run kill @s
execute if score @s rpgloot.storm_spear_charge matches 100.. run kill @s