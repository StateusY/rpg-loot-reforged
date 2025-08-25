scoreboard players operation value rpgc.temp = bar_size rpgc.temp
#scoreboard players operation value rpgc.temp /= #2 constant
execute unless score value rpgc.temp matches 1.. run return 0
execute if score value rpgc.temp matches 8.. run return 8
return run scoreboard players get value rpgc.temp

