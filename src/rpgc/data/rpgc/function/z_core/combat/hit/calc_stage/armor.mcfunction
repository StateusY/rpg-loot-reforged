# subtract armor by armor pen
scoreboard players operation .armor rpgc.temp -= .armor_pen rpgc.temp
# make sure armor isnt 0
execute if score .armor rpgc.temp matches ..0 run scoreboard players set .armor rpgc.temp 0

# get the decaying armor curve
execute store result storage rpgc:temp combat.armor double 0.01 run scoreboard players get .armor rpgc.temp
execute if score .armor rpgc.temp matches 1.. run function rpgc:z_core/math/armor_curve with storage rpgc:temp combat
execute store result score .armor_res rpgc.temp run data get storage bs:out math.pow 1

# clamp the resistance to 70%
execute if score .armor_res rpgc.temp > #70 constant run scoreboard players set .armor_res rpgc.temp 70

# flat dmg reduction 

scoreboard players operation .armor_reduce rpgc.temp = .armor rpgc.temp
scoreboard players operation .armor_reduce rpgc.temp /= #10 constant
scoreboard players operation .armor_reduce rpgc.temp /= .divide rpgc.temp
