execute if function rpgc:z_core/combat/hit/calc_stage/check_valid run return run execute unless score .halt_combat_clear rpgc.temp matches 1 run function rpgc:z_core/combat/hit/reset

data modify storage rpgc:temp combat.dmg set from storage rpgc:temp combat.all_dmg
execute store result score .armor rpgc.temp run function rpgc:z_api/attribute/get {id:armor}

#get the amounts of different damages incoming to split the flat dmg reduction evenly
execute store result score .divide rpgc.temp run data get storage rpgc:temp combat.dmg

# if there is armor, then do armor calc
execute unless score .armor rpgc.temp <= #0 constant run function rpgc:z_core/combat/hit/calc_stage/armor

# run damage calculations
function rpgc:z_core/combat/hit/calc_stage/damage with storage rpgc:temp combat.dmg[0]

# misc
execute anchored eyes positioned ^ ^ ^ run particle item{item:"nether_wart_block"} ~ ~-.5 ~ 0 0 0 0.2 15 normal
execute if score .crit_stage rpgc.temp matches 1 anchored eyes positioned ^ ^ ^ run particle wax_on ~ ~-.5 ~ 0 0 0 10 15 normal
execute if score .crit_stage rpgc.temp matches 1 run playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 1 2
execute if score .crit_stage rpgc.temp matches 2 anchored eyes positioned ^ ^ ^ run particle minecraft:trial_spawner_detection ~ ~-.5 ~ 0 0 0 0.1 25 normal
execute if score .crit_stage rpgc.temp matches 2 run playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 1.5

# prevent clearing the entire system so you can do mutli selector damage
execute unless score .halt_combat_clear rpgc.temp matches 1 run return run function rpgc:z_core/combat/hit/reset