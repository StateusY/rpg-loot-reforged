$scoreboard players set .dur rpgloot.temp $(duration)
$scoreboard players set .shrink rpgloot.temp $(shrink)
execute store result storage rpgloot:temp remander.time int 1 run scoreboard players operation .dur rpgloot.temp -= .shrink rpgloot.temp
execute on passengers run function rpgloot:util/block_shatter/remander with storage rpgloot:temp remander
$scoreboard players set @s rpgloot.block_dur $(duration)
$scoreboard players set @s rpgloot.block_shrink $(shrink)

data remove storage rpgloot:temp remander