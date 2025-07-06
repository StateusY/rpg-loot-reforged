execute store result score .amount rpg_loot.temp run data get storage rpgloot:temp modify.split.add[0].amount 10
function rpg_loot:discover/lore/attributes/sign {location:"storage rpgloot:temp modify.split.add[0]",positive:"+",negative:"-"}
execute store result storage rpgloot:temp modify.split.add[0].whole int 0.1 run scoreboard players get .amount rpg_loot.temp
scoreboard players operation .amount rpg_loot.temp %= #10 constant
execute store result storage rpgloot:temp modify.split.add[0].decimal int 1 run scoreboard players get .amount rpg_loot.temp
function rpg_loot:discover/lore/attributes/add_ with storage rpgloot:temp modify.split.add[0]
data remove storage rpgloot:temp modify.split.add[0]
execute if data storage rpgloot:temp modify.split.add[0] run function rpg_loot:discover/lore/attributes/add
