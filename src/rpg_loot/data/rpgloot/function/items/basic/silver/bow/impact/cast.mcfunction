particle end_rod
tag @e[type=#rpgc:all,distance=..2] add rpgloot.silver_impact_spike_target

scoreboard players add .ray rpgloot.temp 1

execute unless score .ray rpgloot.temp matches 10.. positioned ^ ^ ^1 run return run function rpgloot:items/basic/silver/bow/impact/cast

scoreboard players reset .ray

function rpgc:z_api/fetch_damage/get
execute store result storage rpgloot:temp silver.damage double 0.005 run scoreboard players get .dmg_out rpgc.temp

execute as @e[type=#rpgc:all,distance=..15,tag=rpgloot.silver_impact_spike_target] run function rpgloot:items/basic/silver/bow/impact/damage with storage rpgloot:temp silver