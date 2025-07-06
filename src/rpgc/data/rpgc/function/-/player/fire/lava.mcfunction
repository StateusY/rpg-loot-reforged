advancement revoke @s only rpgc:damage/lava
scoreboard players set .armor_pen rpgc.temp 999999999
function rpgc:damage {damage:[{type:'fire',amount:4}]}
