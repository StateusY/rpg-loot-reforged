execute store result storage rpgloot:temp titanium.ring int 1 run scoreboard players remove @s rpgloot.temp 13
#execute on passengers store result entity @s text_opacity int 1 run scoreboard players get @n[type=armor_stand,tag=rpgloot.titanium_ring] rpgloot.temp

execute on passengers run data modify entity @s text_opacity set from storage rpgloot:temp titanium.ring
scoreboard players add @s rpgloot.titanium_bow 1
execute if score @s rpgloot.titanium_bow matches 1 run execute on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.2f,-6.8f,0f],scale:[45f,45f,45f]}}

execute if score @s rpgloot.titanium_bow matches 20.. on passengers run kill @s
execute if score @s rpgloot.titanium_bow matches 20.. run kill @s
