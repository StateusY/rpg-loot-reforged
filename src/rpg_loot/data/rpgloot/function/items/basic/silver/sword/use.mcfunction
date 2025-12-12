execute if entity @s[tag=rpgloot.silver_casting] run return fail
tag @s add rpgloot.silver_casting
attribute @s movement_speed modifier add rpgloot:silver -99999 add_value
attribute @s jump_strength modifier add rpgloot:silver -99999 add_value
say e
execute if predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:"this",score:"rpgloot.silver_frostbite"},range:{min:{type:"minecraft:score",target:"this",score:"rpgloot.silver_max_frostbite",scale:0.95}}} run return run function rpgloot:items/basic/silver/sword/100
execute if predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:"this",score:"rpgloot.silver_frostbite"},range:{min:{type:"minecraft:score",target:"this",score:"rpgloot.silver_max_frostbite",scale:0.8}}} run return run function rpgloot:items/basic/silver/sword/80
execute if predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:"this",score:"rpgloot.silver_frostbite"},range:{min:{type:"minecraft:score",target:"this",score:"rpgloot.silver_max_frostbite",scale:0.6}}} run return run function rpgloot:items/basic/silver/sword/60
execute if predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:"this",score:"rpgloot.silver_frostbite"},range:{min:{type:"minecraft:score",target:"this",score:"rpgloot.silver_max_frostbite",scale:0.4}}} run return run function rpgloot:items/basic/silver/sword/40
execute if predicate {condition:"minecraft:value_check",value:{type:"minecraft:score",target:"this",score:"rpgloot.silver_frostbite"},range:{min:{type:"minecraft:score",target:"this",score:"rpgloot.silver_max_frostbite",scale:0.2}}} run return run function rpgloot:items/basic/silver/sword/20
attribute @s movement_speed modifier remove rpgloot:silver
attribute @s jump_strength modifier remove rpgloot:silver
tag @s remove rpgloot.silver_casting