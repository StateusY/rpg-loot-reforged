execute if score @s rpgloot.hit_count matches 1.. run function rpgloot:blocks/forge/break/check

# break if improper floor
#execute unless block ~ ~ ~ minecraft:barrier run function rpgloot:blocks/forge/break/break
#execute if block ~ ~-1 ~ #rpgloot:blocks run function rpgloot:blocks/forge/break/break

execute if entity @s[tag=rpgloot.smelting] run function rpgloot:blocks/forge/smelt/process