advancement revoke @s only rpgc:magic
scoreboard players set .armor_pen rpgc.temp 999999999
execute unless score @s rpgc.hp matches ..5 run return run function rpgc:damage {damage:[{type:'magic',amount:5}]}