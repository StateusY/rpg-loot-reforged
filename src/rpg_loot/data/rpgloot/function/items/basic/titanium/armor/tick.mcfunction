execute if entity @s[tag=rpgloot.titanium_ran] run return fail
tag @s add rpgloot.titanium_ran
execute unless entity @s[tag=rpgloot.titanium_sprint] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:1b,sprint:1b}},movement:{horizontal_speed:{min:1,max:9999}}}} run return run function rpgloot:items/basic/titanium/armor/start_sprint
execute if entity @s[tag=rpgloot.titanium_sprint] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:1b,sprint:1b}},movement:{horizontal_speed:{min:1,max:9999}}}} run function rpgloot:items/basic/titanium/armor/end_sprint
execute if entity @s[tag=rpgloot.titanium_sprint] run function rpgloot:items/basic/titanium/armor/sprinting
