attribute @s movement_speed modifier remove rpgloot:silver
attribute @s jump_strength modifier remove rpgloot:silver
tag @s remove rpgloot.silver_casting
scoreboard players operation .temp rpgloot.temp = @s rpgc.id
$execute as @e[type=marker,tag=rpgloot.silver_spike_location,limit=$(count),sort=random] if score @s rpgloot.silver_spike_casting = .temp rpgloot.temp at @s run function rpgloot:items/basic/silver/sword/spike
execute as @e[type=marker,tag=rpgloot.silver_spike_location] if score @s rpgloot.silver_spike_casting = .temp rpgloot.temp at @s run kill @s
execute as @e[type=armor_stand,tag=rpgloot.silver_cone] if score @s rpgloot.silver_spike_casting = .temp rpgloot.temp run kill @s
data remove storage rpgloot:temp silver