$execute on passengers run data merge entity @s {interpolation_duration:$(shrink)}
$scoreboard players set @s rpgloot.block_dur $(duration)
$scoreboard players set @s rpgloot.block_shrink $(shrink)

data remove storage rpgloot:temp remander