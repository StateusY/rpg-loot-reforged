particle smoke ^ ^ ^-.5 ^ ^ ^1000000 0.0000002 0
execute on vehicle store result entity @s data.x double 0.001 run random value -10..10
execute on vehicle store result entity @s data.y double 0.002 run random value -10..10
execute on vehicle unless entity @s[tag=rpgloot.shade_angry] run function rpgloot:items/shadow_crown/shade/owner with entity @s data
execute on vehicle if entity @s[tag=rpgloot.shade_angry] run function rpgloot:items/shadow_crown/shade/angry with entity @s data