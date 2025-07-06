$data modify storage rpgc:temp numbers.color set from storage rpgc:registry damage[{type:"$(type)"}].color
$data modify storage rpgc:temp numbers.prefix set from storage rpgc:registry damage[{type:"$(type)"}].prefix


function rpgc:-/combat/hit/mult with storage rpgc:temp attacker


execute store result score .min rpgc.temp run data get storage rpgc:temp attacker.damage[0].amount 0.5

execute store result score .damage rpgc.temp run data get storage rpgc:temp attacker.damage[0].amount 10
scoreboard players operation .type_mult rpgc.temp += #100 constant 
execute store result storage rpgc:temp calc.add double 0.01 run scoreboard players get .type_mult rpgc.temp
function rpgc:-/combat/hit/add with storage rpgc:temp calc

scoreboard players set .percent rpgc.temp 1000
scoreboard players operation .percent rpgc.temp -= .resist rpgc.temp

scoreboard players operation .damage rpgc.temp *= .percent rpgc.temp
scoreboard players operation .damage rpgc.temp /= #1000 constant

scoreboard players operation .damage rpgc.temp -= .flat rpgc.temp

$scoreboard players operation .percent rpgc.temp -= @s rpgc.$(type)_resistance

scoreboard players operation .damage rpgc.temp *= .percent rpgc.temp
scoreboard players operation .damage rpgc.temp /= #1000 constant



execute if score .damage rpgc.temp < .min rpgc.temp run scoreboard players operation .damage rpgc.temp = .min rpgc.temp
execute if score .damage rpgc.temp matches ..0 run scoreboard players set .damage rpgc.temp 1

execute store result storage rpgc:temp variance int 0.05 run scoreboard players get .damage rpgc.temp

function rpgc:-/combat/hit/variance with storage rpgc:temp
function rpgc:-/combat/dmg_numbers/step with storage rpgc:temp numbers



scoreboard players operation @s rpgc.hp -= .damage rpgc.temp


execute if score @s rpgc.hp matches ..0 run return run function rpgc:-/combat/hit/death


#recurse 
data remove storage rpgc:temp attacker.damage[0]
execute if data storage rpgc:temp attacker.damage[0] run return run function rpgc:-/combat/hit/calc with storage rpgc:temp attacker.damage[0]
