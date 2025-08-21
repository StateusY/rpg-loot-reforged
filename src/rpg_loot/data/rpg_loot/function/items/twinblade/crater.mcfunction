scoreboard players add @s rpgloot.temp 1
execute if score @s rpgloot.temp matches 1 run function rpg_loot:items/twinblade/damage1 with entity @s data.twinblade
execute if score @s rpgloot.temp matches 4 run function rpg_loot:items/twinblade/damage2 with entity @s data.twinblade
execute if score @s rpgloot.temp matches 7 run function rpg_loot:items/twinblade/damage3 with entity @s data.twinblade
