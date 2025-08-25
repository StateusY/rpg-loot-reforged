execute if score @s rpgloot.parry_timer matches ..-1 run return run scoreboard players add @s rpgloot.parry_timer 1
execute unless score @s rpgloot.parry_timer matches 0 run return fail
scoreboard players set @s[tag=rpgloot.parrying] rpgloot.parry_timer 20
function rpgloot:items/basic/iron/sword/reset