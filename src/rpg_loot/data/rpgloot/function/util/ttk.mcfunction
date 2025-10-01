
scoreboard players remove @s rpgloot.ttk 1
execute if score @s rpgloot.ttk matches 1.. run return fail
scoreboard players reset @s
execute on passengers run kill @s
kill @s