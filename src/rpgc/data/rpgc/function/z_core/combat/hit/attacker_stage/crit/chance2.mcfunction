# runs crit chance and adds it to dmg multiplier

$execute unless predicate {condition:"minecraft:random_chance",chance:$(over_crit_chance)} run return fail
execute store result score .over_mult rpgc.temp run function rpgc:z_api/attribute/get {id:over_crit}
scoreboard players operation .dmg_mult rpgc.temp += .over_mult rpgc.temp
# the crit stage, 1=crit 2=over crit
scoreboard players set .crit_stage rpgc.temp 2