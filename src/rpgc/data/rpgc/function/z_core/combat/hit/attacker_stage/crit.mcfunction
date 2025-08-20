# roll a crit chance value
execute store result score .random rpgc.temp run random value 1..100
execute unless score .random rpgc.temp <= .crit_chance rpgc.temp run return fail
# get the crit damage attribute and add it to the current dmg multiplier
execute store result score .crit_mult rpgc.temp run function rpgc:z_api/attribute/get {id:crit_damage}
scoreboard players operation .dmg_mult rpgc.temp += .crit_mult rpgc.temp

#the crit stage, 1=crit 2=over crit
scoreboard players set .crit_stage rpgc.temp 1

#check if the player has a total of 25% crit chance
execute unless score .crit_chance rpgc.temp matches 25.. run return fail

# subtract the crit chance from the rolled value to check for overflow, if there is, it can double crit
scoreboard players operation .crit_chance rpgc.temp -= .random rpgc.temp
execute unless score .crit_chance rpgc.temp matches 1.. run return fail

execute store result score .random rpgc.temp run random value 1..100
execute unless score .random rpgc.temp <= .crit_chance rpgc.temp run return fail

execute store result score .crit_mult rpgc.temp run function rpgc:z_api/attribute/get {id:over_crit}
scoreboard players operation .dmg_mult rpgc.temp += .crit_mult rpgc.temp
scoreboard players set .crit_stage rpgc.temp 2