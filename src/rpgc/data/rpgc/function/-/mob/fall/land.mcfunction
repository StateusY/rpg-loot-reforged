scoreboard players operation @s rpgc.fall -= #30 constant
execute if block ~ ~-.1 ~ pointed_dripstone run scoreboard players operation @s rpgc.fall *= #2 constant
execute if score @s rpgc.fall matches 1.. run function rpgc:-/mob/fall/apply
scoreboard players reset @s rpgc.fall
scoreboard players reset .temp rpgc.fall
data remove storage rpgc:temp fall
