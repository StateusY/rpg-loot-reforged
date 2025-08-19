# crit chance

$execute unless predicate {condition:"minecraft:random_chance",chance:$(crit_chance)} run return fail
# get the crit damage attribute and add it to the current dmg multiplier
execute store result score .crit_mult rpgc.temp run function rpgc:z_api/attribute/get {id:crit_damage}
scoreboard players operation .dmg_mult rpgc.temp += .crit_mult rpgc.temp

#the crit stage, 1=crit 2=over crit
scoreboard players set .crit_stage rpgc.temp 1

# on crit, get the current crit chance and subtract it by 100%, if there is any left, run overcrit chance
execute store result score .remain_crit rpgc.temp run function rpgc:z_api/attribute/get {id:crit_chance}
execute if score .remain_crit rpgc.temp >= #100 constant store result storage rpgc:temp combat.over_crit_chance double 0.01 run scoreboard players operation .remain_crit rpgc.temp -= #100 constant
function rpgc:z_core/combat/hit/attacker_stage/crit/chance2 with storage rpgc:temp combat

scoreboard players reset .remain_crit