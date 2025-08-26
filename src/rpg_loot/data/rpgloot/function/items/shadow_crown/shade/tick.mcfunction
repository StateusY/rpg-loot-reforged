particle smoke ^ ^ ^-.5 ^ ^ ^1000000 0.0000002 0
execute if predicate {condition:"minecraft:random_chance",chance:0.05} on vehicle store result entity @s data.x double 0.015 run random value -20..20
execute if predicate {condition:"minecraft:random_chance",chance:0.05} on vehicle store result entity @s data.y double 0.03 run random value -20..20
execute on vehicle unless entity @s[tag=rpgloot.shade_angry] run function rpgloot:items/shadow_crown/shade/owner with entity @s data
execute on vehicle if entity @s[tag=rpgloot.shade_angry] run function rpgloot:items/shadow_crown/shade/angry with entity @s data
