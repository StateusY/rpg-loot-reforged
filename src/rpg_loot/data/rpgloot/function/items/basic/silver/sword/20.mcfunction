say 20
scoreboard players set @s rpgloot.silver_spike_casting 20
scoreboard players set @s rpgloot.silver_spike_amount 6
execute positioned ^ ^ ^1 rotated ~ 0 run function rpgloot:items/basic/silver/sword/cone {speed:.5}
