scoreboard players set .halt_combat_clear rpgc.temp 1
$execute as $(by) at @s run function rpgc:z_core/combat/hit/attacker_stage/attacker
$execute as $(target) run function rpgc:z_core/combat/hit/victim
$execute as $(target) at $(target) run function rpgc:z_core/combat/hit/calc_stage/target
function rpgc:z_core/combat/hit/reset