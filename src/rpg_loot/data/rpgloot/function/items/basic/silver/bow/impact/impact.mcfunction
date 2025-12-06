scoreboard players add @s rpgloot.silver_impact_spike_timer 1

execute if score @s rpgloot.silver_impact_spike_timer matches 1 on passengers run data merge entity @s {transformation:{translation:[0f,0f,5f],scale:[3f,7f,3f]}}
execute if score @s rpgloot.silver_impact_spike_timer matches 2 on passengers run function rpgloot:items/basic/silver/bow/impact/cast

execute if score @s rpgloot.silver_impact_spike_timer matches 75 on passengers run data merge entity @s {interpolation_duration:25,transformation:{translation:[0f,0f,-2f],scale:[0.5f,0.5f,0f]}}

execute if score @s rpgloot.silver_impact_spike_timer matches 100.. on passengers run kill @s
execute if score @s rpgloot.silver_impact_spike_timer matches 100.. run kill @s
