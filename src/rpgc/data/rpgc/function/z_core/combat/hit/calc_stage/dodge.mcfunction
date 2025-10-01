$execute unless predicate {condition:"minecraft:random_chance",chance:$(dodge)} run return fail
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 2
particle white_ash ~ ~1 ~ .5 1 .5 1 15
particle snowflake ~ ~1 ~ 0.1 0.1 0.1 0.1 15 normal
execute store result storage rpgc:temp combat.x double 0.2 run random value -5..5
execute store result storage rpgc:temp combat.z double 0.2 run random value -5..5
function rpgc:z_core/combat/hit/calc_stage/push with storage rpgc:temp combat
scoreboard players set .dodged rpgc.temp 1