particle end_rod
tag @e[type=#rpgc:all,distance=..2] add rpgloot.silver_impact_spike_target

scoreboard players add .ray rpgloot.temp 1

execute unless score .ray rpgloot.temp matches 10.. positioned ^ ^ ^1 run return run function rpgloot:items/basic/silver/bow/impact/cast

scoreboard players reset .ray