execute if entity @s[tag=rpgloot.magnite_ran] run return fail
tag @s remove rpgloot.magnite_hit_ran
tag @s add rpgloot.magnite_ran
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_sneaking:1b}}} run return fail
execute unless score @s rpgloot.magnite_count matches 5.. run scoreboard players add @s rpgloot.magnite_charge 1

execute if score @s rpgloot.magnite_charge matches 50.. run function rpgloot:items/basic/magnite/armor/spawn_block