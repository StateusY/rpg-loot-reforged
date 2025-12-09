execute if entity @s[tag=rpgloot.titanium_ran] run return fail
tag @s add rpgloot.titanium_ran
execute unless entity @s[tag=rpgloot.titanium_sprint] unless score @s rpgloot.titanium_charge matches 300.. run scoreboard players add @s rpgloot.titanium_charge 1 
execute if score @s rpgloot.titanium_charge matches ..0 if entity @s[tag=rpgloot.titanium_sprint] run return run function rpgloot:items/basic/titanium/armor/end_sprint

execute unless entity @s[tag=rpgloot.titanium_sprint] if score @s rpgloot.titanium_charge matches 100.. if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:1b,sprint:1b}},movement:{horizontal_speed:{min:1}}}} run return run function rpgloot:items/basic/titanium/armor/start_sprint
execute if entity @s[tag=rpgloot.titanium_sprint] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:1b,sprint:1b}},movement:{horizontal_speed:{min:1}}}} run function rpgloot:items/basic/titanium/armor/end_sprint
execute if entity @s[tag=rpgloot.titanium_sprint] run function rpgloot:items/basic/titanium/armor/sprinting
