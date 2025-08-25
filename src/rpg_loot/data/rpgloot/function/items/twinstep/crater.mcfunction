scoreboard players add @s rpgloot.temp 1
execute if score @s rpgloot.temp matches 1 run function rpgloot:items/twinstep/damage1 with entity @s data.twinstep
execute if score @s rpgloot.temp matches 4 run function rpgloot:items/twinstep/damage2 with entity @s data.twinstep
execute if score @s rpgloot.temp matches 7 run function rpgloot:items/twinstep/damage3 with entity @s data.twinstep
