execute if score @s rpgloot.hit_timer matches 60 run scoreboard players set @s rpgloot.hit_count 0
execute if score @s rpgloot.hit_timer matches 60 run return run scoreboard players set @s rpgloot.hit_timer 0
execute if score @s rpgloot.hit_count matches 1..2 run return run scoreboard players add @s rpgloot.hit_timer 1

function rpgloot:blocks/forge/break/break