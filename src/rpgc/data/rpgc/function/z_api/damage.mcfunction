scoreboard players set .halt_combat_clear rpgc.temp 1

#{type:"damage_type",value:amount of that damage type}

$data modify storage rpgc:temp combat.dmg set value [$(damage)]
$execute as $(target) at @s run function rpgc:z_core/combat/hit/calc_stage/target
function rpgc:z_core/combat/hit/reset