tag @s add rpgc.current_attacker

## MOVE TO END

execute store result score .dmg_mult rpgc.temp run function rpgc:z_api/attribute/get {id:dmg_mult}

#Current crit system, eventualy change to allow for over crits using chance overflow above 50% crit chance
execute store result score .crit_chance rpgc.temp run function rpgc:z_api/attribute/get {id:crit_chance}
function rpgc:z_core/combat/hit/attacker_stage/crit

#get the dmg mult *can be increased by crits*
execute store result storage rpgc:temp combat.dmg_mult double 0.01 run scoreboard players get .dmg_mult rpgc.temp 

#get the damage types the player is dealing and the base amount
data modify storage rpgc:temp combat.damages set from storage rpgc:registry damage
function rpgc:z_core/combat/hit/attacker_stage/fetch_recurse

execute store result score .armor_pen rpgc.temp run function rpgc:z_api/attribute/get {id:pen}