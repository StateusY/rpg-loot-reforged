## 

#get the dmg mult *can be increased by crits*
execute store result score .dmg_mult rpgc.temp run function rpgc:z_api/attribute/get {id:dmg_mult}

#Current crit system, eventualy change to allow for over crits using chance overflow above 50% crit chance
execute store result score .crit_chance rpgc.temp run function rpgc:z_api/attribute/get {id:crit_chance}
function rpgc:z_core/combat/hit/attacker_stage/crit


#get the damage types the player is dealing and the base amount
data modify storage rpgc:temp combat.damages set from storage rpgc:registry damage
function rpgc:z_core/player/data/misc/damage_recurse
data modify storage rpgc:output damage set from storage rpgc:temp combat.all_dmg
function rpgc:z_core/combat/hit/reset