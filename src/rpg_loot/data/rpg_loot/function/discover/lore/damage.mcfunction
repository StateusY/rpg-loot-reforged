$data modify storage rpgloot:temp modify.display set from storage rpgc:registry damage[{type:"$(type)"}]
execute store result storage rpgloot:temp modify.display.whole int 1 run data get storage rpgloot:temp modify.damage[0].amount
execute store result score .amount rpg_loot.temp run data get storage rpgloot:temp modify.damage[0].amount 10
scoreboard players operation .amount rpg_loot.temp %= #10 constant
execute store result storage rpgloot:temp modify.display.decimal int 1 run scoreboard players get .amount rpg_loot.temp
function rpg_loot:discover/lore/damage_ with storage rpgloot:temp modify.display
data remove storage rpgloot:temp modify.damage[0]
execute if data storage rpgloot:temp modify.damage[0] run function rpg_loot:discover/lore/damage with storage rpgloot:temp modify.damage[0]
