




# # Minimum damage received is 5% of incoming damage
# execute store result score .min rpgc.temp run data get storage rpgc:temp damage.sent[0].amount 0.05
# execute if score .min rpgc.temp matches 0 run scoreboard players set .min rpgc.temp 1
# # Get damage amount and resistance to that damage type
# execute store result score .dmg rpgc.temp run data get storage rpgc:temp damage.sent[0].amount

# $execute if entity @s[type=player] store result score .res rpgc.temp run function rpgc:-/player/attribute/get {type:"$(type)_res"}
# $execute unless entity @s[type=player] run function rpgc:-/combat/hit/split/mob_resistance {type:"$(type)"}

# #.armor_curve
# scoreboard players operation .armor_curve rpgc.temp *= .dmg rpgc.temp
# scoreboard players operation .armor_curve rpgc.temp /= #1000 constant
# scoreboard players operation .dmg rpgc.temp -= .armor_curve rpgc.temp
# scoreboard players operation .dmg rpgc.temp -= .armor_flat rpgc.temp

# execute if score .dmg rpgc.temp < .min rpgc.temp run scoreboard players operation .dmg rpgc.temp = .min rpgc.temp

# # Apply resistance
# scoreboard players operation .res rpgc.temp *= .dmg rpgc.temp
# scoreboard players operation .res rpgc.temp /= #1000 constant
# scoreboard players operation .dmg rpgc.temp -= .res rpgc.temp



# # Apply variance
# execute store result storage rpgc:temp damage.variance int 0.05 run scoreboard players get .dmg rpgc.temp
# function rpgc:-/combat/hit/variance with storage rpgc:temp damage
# scoreboard players operation .dmg rpgc.temp += .variance rpgc.temp

# # Apply minimum


# # Damage numbers
# $data modify storage rpgc:temp numbers.color set from storage rpgc:registry damage[{type:"$(type)"}].color
# $data modify storage rpgc:temp numbers.prefix set from storage rpgc:registry damage[{type:"$(type)"}].prefix
# execute store result score .digit1 rpgc.temp store result score .digit2 rpgc.temp run scoreboard players get .dmg rpgc.temp
# execute store result storage rpgc:temp numbers.1 int 1 run scoreboard players operation .digit1 rpgc.temp /= #10 constant
# execute store result storage rpgc:temp numbers.2 int 1 run scoreboard players operation .digit2 rpgc.temp %= #10 constant
# function rpgc:-/combat/dmg_numbers/step with storage rpgc:temp numbers

# # Apply Result
# scoreboard players operation @s rpgc.hp -= .dmg rpgc.temp
# execute if score @s rpgc.hp matches ..0 run function rpgc:-/combat/hit/split/death_events
# execute if score @s rpgc.hp matches ..0 run return run function rpgc:-/combat/hit/death

# # Recurse
# data remove storage rpgc:temp damage.sent[0]
# execute if data storage rpgc:temp damage.sent[0] run function rpgc:-/combat/hit/calc with storage rpgc:temp damage.sent[0]
