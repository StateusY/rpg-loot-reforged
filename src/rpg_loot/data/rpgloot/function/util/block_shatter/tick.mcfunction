scoreboard players remove @s rpgloot.block_dur 1
execute if score @s rpgloot.block_shrink >= @s rpgloot.block_dur on passengers run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute unless score @s rpgloot.block_dur matches ..0 run return fail
execute on passengers run scoreboard players reset @s
execute on passengers run kill @s
scoreboard players reset @s
kill @s
