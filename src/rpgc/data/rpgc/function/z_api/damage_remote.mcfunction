# Damage remote allows you to damage a target, by a certain enemy, while letting the attacker be someone else, Mostly usefull for projectilesa

scoreboard players set .halt_combat_clear rpgc.temp 1
scoreboard players set .no_attacker rpgc.temp 1
$tag $(remote) add rpgc.current_attacker
$execute as $(target) run function rpgc:z_core/combat/hit/victim
$execute as $(by) at @s run function rpgc:z_core/combat/hit/attacker_stage/attacker
$execute as $(target) at $(target) run function rpgc:z_core/combat/hit/calc_stage/target
function rpgc:z_core/combat/hit/reset