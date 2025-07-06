tag @s add rpgc.downed_timer
scoreboard players operation @s rpgc.downed_timer = #config rpgc.downed_timer
scoreboard players set @s rpgc.temp 20
data merge entity @s {billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},text:'{"score":{"name":"@s","objective":"rpgc.downed_timer"}}',background:0}
tp @s ~ ~ ~ ~180 0
