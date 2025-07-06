scoreboard players operation attribute rpgc.temp += add rpgc.temp
scoreboard players operation attribute rpgc.temp *= mul rpgc.temp
scoreboard players operation attribute rpgc.temp /= #10 constant

#tellraw @s ["add: ",{"score":{"objective":"rpgc.temp","name":"add"}},", mul: ",{"score":{"objective":"rpgc.temp","name":"mul"}},", total: ",{"score":{"objective":"rpgc.temp","name":"attribute"}}]
