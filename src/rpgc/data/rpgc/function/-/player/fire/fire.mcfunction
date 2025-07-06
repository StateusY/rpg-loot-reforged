advancement revoke @s only rpgc:damage/fire
scoreboard players set .armor_pen rpgc.temp 999999999
function rpgc:damage {damage:[{type:'fire',amount:1}]}
