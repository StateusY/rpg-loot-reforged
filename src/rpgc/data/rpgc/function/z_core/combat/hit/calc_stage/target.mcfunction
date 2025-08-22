execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",gamemode:["creative","spectator"]}}} run return fail
execute if function rpgc:z_core/combat/hit/calc_stage/check_valid run return run execute unless score .halt_combat_clear rpgc.temp matches 1 run function rpgc:z_core/combat/hit/reset

function rpgc:z_api/event/call {event:hurt}

data modify storage rpgc:temp combat.dmg set from storage rpgc:temp combat.all_dmg
execute store result score .armor rpgc.temp run function rpgc:z_api/attribute/get {id:armor}

#get the amounts of different damages incoming to split the flat dmg reduction evenly
execute store result score .divide rpgc.temp run data get storage rpgc:temp combat.dmg

# if there is armor, then do armor calc
execute unless score .armor rpgc.temp <= #0 constant run function rpgc:z_core/combat/hit/calc_stage/armor

# run damage calculations
function rpgc:z_core/combat/hit/calc_stage/damage with storage rpgc:temp combat.dmg[0]
execute unless entity @s[type=player] run function rpgc:z_core/mob/display/hp_change
# misc
execute anchored eyes positioned ^ ^ ^ run particle item{item:"nether_wart_block"} ~ ~-.5 ~ 0 0 0 0.2 15 normal
execute if score .crit_stage rpgc.temp matches 1 anchored eyes positioned ^ ^ ^ run particle wax_on ~ ~-.5 ~ 0 0 0 10 15 normal
execute if score .crit_stage rpgc.temp matches 1 run playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 1 2
execute if score .crit_stage rpgc.temp matches 2 anchored eyes positioned ^ ^ ^ run particle minecraft:trial_spawner_detection ~ ~-.5 ~ 0 0 0 0.1 25 normal
execute if score .crit_stage rpgc.temp matches 2 run playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 1.5
execute unless entity @e[type=#rpgc:all,tag=rpgc.current_attacker] run damage @s[type=!player] 0.0000001 rpgc:hit by @p
execute unless entity @s[type=player] run data remove entity @s HurtTime
# prevent clearing the entire system so you can do mutli selector damage
execute unless score .halt_combat_clear rpgc.temp matches 1 run return run function rpgc:z_core/combat/hit/reset