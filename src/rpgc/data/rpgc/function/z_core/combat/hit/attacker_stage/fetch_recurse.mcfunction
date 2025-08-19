function rpgc:z_core/combat/hit/attacker_stage/fetch_damage_ with storage rpgc:temp combat.damages[0]
data remove storage rpgc:temp combat.damages[0]
execute if data storage rpgc:temp combat.damages[0] run function rpgc:z_core/combat/hit/attacker_stage/fetch_recurse