
execute unless entity @n[type=player,predicate=rpgc:sneaking] run playsound entity.warden.heartbeat player @a ~ ~ ~ 0.5 1.4
execute if score @s rpgc.downed_timer matches ..0 run return run function rpgc:-/downed/death

scoreboard players set @s rpgc.temp 20

execute on passengers if entity @s[tag=rpgc.reviving] run return fail

scoreboard players remove @s rpgc.downed_timer 1
data merge entity @s {text:'{"score":{"name":"@s","objective":"rpgc.downed_timer"}}'}
