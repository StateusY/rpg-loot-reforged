
execute unless predicate {condition:random_chance,chance:0.15} run return fail
function rpgc:z_api/fetch_damage/get
execute store result storage rpgloot:temp infernal.dmg double 0.0025 run scoreboard players get .dmg_out rpgc.temp
execute as @e[type=#rpgc:all,tag=rpgc.current_victim] at @s run function rpgloot:parts/infernal/engulf with storage rpgloot:temp infernal