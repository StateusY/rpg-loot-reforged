
execute unless predicate {condition:random_chance,chance:0.15} run return fail
execute as @e[type=#rpgc:all,tag=rpgc.current_victim] at @s anchored eyes positioned ^ ^ ^ run particle enchanted_hit ~ ~ ~ 0.2 0 0.2 0.25 25 normal
execute as @e[type=#rpgc:all,tag=rpgc.current_victim] at @s run effect give @s slowness 1 255 false
execute as @e[type=#rpgc:all,tag=rpgc.current_victim] at @s run effect give @s weakness 1 1 false