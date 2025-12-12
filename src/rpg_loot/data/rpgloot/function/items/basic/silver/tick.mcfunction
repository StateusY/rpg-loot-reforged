#execute if score @s rpgloot.silver_frostbite matches 1.. run scoreboard players operation @s rpgloot.silver_frostbite -= @s rpgloot.silver_frostbite_decay

execute if score @s rpgloot.silver_spike_casting matches 1.. run function rpgloot:items/basic/silver/sword/particles/charge/tick
execute if score @s rpgloot.silver_spike_casting matches 1.. run function rpgloot:items/basic/silver/sword/particles/charge/tick
execute if score @s rpgloot.silver_spike_casting matches 1.. run function rpgloot:items/basic/silver/sword/particles/charge/tick
execute if score @s rpgloot.silver_spike_casting matches 1.. run function rpgloot:items/basic/silver/sword/particles/charge/tick
execute if score @s rpgloot.silver_spike_casting matches 1.. run function rpgloot:items/basic/silver/sword/particles/charge/tick

execute if score @s rpgloot.silver_spike_casting matches 1.. run scoreboard players remove @s rpgloot.silver_spike_casting 1

execute if score @s rpgloot.silver_spike_casting matches 1 run execute store result storage rpgloot:temp silver.count int 1 run scoreboard players get @s rpgloot.silver_spike_amount
execute if score @s rpgloot.silver_spike_casting matches 1 run function rpgloot:items/basic/silver/sword/end with storage rpgloot:temp silver
