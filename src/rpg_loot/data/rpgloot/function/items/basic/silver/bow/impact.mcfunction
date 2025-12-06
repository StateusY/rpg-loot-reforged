function rpgc:z_api/fetch_damage/get
execute store result storage rpgloot:temp silver.damage double 0.005 run scoreboard players get .dmg_out rpgc.temp

execute as @e[type=#rpgc:all,distance=..15,tag=rpgloot.silver_impact_spike_target] run function rpgloot:items/basic/silver/bow/impact/damage with storage rpgloot:temp silver

execute on vehicle positioned as @s on passengers run function rpgloot:items/basic/silver/bow/cast
execute on vehicle run kill @s