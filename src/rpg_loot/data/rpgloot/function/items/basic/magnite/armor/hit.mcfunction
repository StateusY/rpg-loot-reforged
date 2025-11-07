execute unless entity @s[tag=rpgc.current_attacker] run return run execute as @n[tag=rpgc.current_attacker] at @s run function rpgloot:items/basic/magnite/armor/hit
execute if entity @s[tag=rpgloot.magnite_hit_ran] run return fail
execute store result storage rpgloot:temp magnite.armor double 0.0025 run function rpgc:z_api/attribute/get {id:"armor"}
execute store result storage rpgloot:temp magnite.id int 1 run scoreboard players get @s rpgc.id
function rpgloot:items/basic/magnite/armor/step with storage rpgloot:temp magnite
tag @s add rpgloot.magnite_hit_ran

