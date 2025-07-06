scoreboard players operation health rpgc.temp = @s rpgc.hp
execute unless score health rpgc.temp matches 1.. run scoreboard players set health rpgc.temp 0

scoreboard players operation health_1 rpgc.temp = health rpgc.temp
scoreboard players operation health_1 rpgc.temp /= #10 constant
scoreboard players operation health_01 rpgc.temp = health rpgc.temp
scoreboard players operation health_01 rpgc.temp %= #10 constant

scoreboard players operation max_health_1 rpgc.temp = @s rpgc.max_hp
scoreboard players operation max_health_1 rpgc.temp /= #10 constant
scoreboard players operation max_health_01 rpgc.temp = @s rpgc.max_hp
scoreboard players operation max_health_01 rpgc.temp %= #10 constant

# Scale health
scoreboard players operation bar rpgc.temp = health rpgc.temp
scoreboard players operation bar rpgc.temp *= #99 constant
scoreboard players operation bar rpgc.temp /= @s rpgc.max_hp

# Get 1s
scoreboard players operation bar_full_1s rpgc.temp = bar rpgc.temp
scoreboard players operation bar_full_1s rpgc.temp %= #10 constant

# Get 10s
scoreboard players operation bar_full_10s rpgc.temp = bar rpgc.temp
scoreboard players operation bar_full_10s rpgc.temp /= #10 constant

# Setup inverse score
scoreboard players set bar_empty_1s rpgc.temp 9
scoreboard players operation bar_empty_1s rpgc.temp -= bar_full_1s rpgc.temp
scoreboard players set bar_empty_10s rpgc.temp 9
scoreboard players operation bar_empty_10s rpgc.temp -= bar_full_10s rpgc.temp
