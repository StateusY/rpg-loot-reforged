$scoreboard players set .dur rpgloot.temp $(duration)
$scoreboard players set .shrink rpgloot.temp $(shrink)
execute store result storage rpgloot:temp remander.time int 1 run scoreboard players operation .dur rpgloot.temp -= .shrink rpgloot.temp
#scoreboard players operation @s rpgloot.block_shrink 
$scoreboard players set @s rpgloot.block_dur $(duration)