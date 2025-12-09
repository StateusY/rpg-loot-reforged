
scoreboard players remove @s rpgc.ttk 1
execute if score @s rpgc.ttk matches 1.. run return fail
execute on passengers run kill @s
execute on passengers run scoreboard players reset @s
execute on vehicle run kill @s
execute on vehicle run scoreboard players reset @s
scoreboard players reset @s
kill @s