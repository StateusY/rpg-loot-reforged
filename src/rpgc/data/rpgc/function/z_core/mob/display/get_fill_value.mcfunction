execute unless score bar_fill rpgc.temp matches 1.. run return 0
execute if score bar_fill rpgc.temp matches 9.. run return 9
execute if score bar_fill rpgc.temp matches 8.. run return 8
return run scoreboard players get bar_fill rpgc.temp

