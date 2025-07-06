advancement revoke @s only rpgc:damage/fall
execute if entity @s[tag=rpgc.wimd_charge] run return run function rpgc:-/player/fall/reset
execute if block ~ ~-.1 ~ slime_block if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_sneaking":false}}} run return run function rpgc:-/player/fall/reset
scoreboard players operation @s rpgc.fall /= #10 constant
execute store result score .temp rpgc.fall run attribute @s safe_fall_distance get 10
scoreboard players operation @s rpgc.fall -= .temp rpgc.fall
execute if block ~ ~-.1 ~ pointed_dripstone run scoreboard players operation @s rpgc.fall *= #2 constant
execute if score @s rpgc.fall matches 1.. run function rpgc:-/player/fall/apply
scoreboard players reset @s rpgc.fall
scoreboard players reset .temp rpgc.fall
data remove storage rpgc:temp fall
