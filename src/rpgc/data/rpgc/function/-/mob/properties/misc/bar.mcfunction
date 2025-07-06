tag @s add rpgc
tag @s add rpgc.mob_display
tag @s add rpgc.hp_display
tag @s add rpgc.current_display
data merge entity @s {teleport_duration:2,billboard:"vertical",brightness:{sky:15,block:8},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.15f,0f],scale:[1f,1f,1f]},background:0}
ride @s mount @n[type=#rpgc:mob,tag=rpgc.current]
