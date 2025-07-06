scoreboard players set .halt rpgc.temp 1
tag @s remove rpgc.arrow_impact
particle crit ~ ~ ~ 0 0 0 0 1 force
execute on vehicle facing entity @n[type=#rpgc:mob,sort=nearest,limit=1] eyes run function example:redirect