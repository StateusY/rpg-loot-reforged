say 100
scoreboard players set @s rpgloot.silver_spike_casting 40
scoreboard players set @s rpgloot.silver_spike_amount 30
execute positioned ^ ^ ^1 rotated ~ 0 run function rpgloot:items/basic/silver/sword/cone {speed:.9}