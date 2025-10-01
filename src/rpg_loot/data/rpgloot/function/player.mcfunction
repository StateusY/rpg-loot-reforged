execute if score @s[tag=rpgloot.crafter_open] rpgloot.crafter matches 1001.. run function rpgloot:station/crafter/craft
execute if score @s rpgloot.crafter matches -1 run function rpgloot:station/crafter/close
execute if score @s rpgloot.died matches 1.. run function rpgloot:player/spawn
## Scoreboard hell
scoreboard players enable @s rpgloot.crafter
# Ores
execute if score @s rpgloot.magnite_mined matches 1.. as @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data": {rpgloot:{"material":"magnite_clump"}}}}}] at @s run function rpgloot:ores/magnite
execute if score @s rpgloot.magnite_mined matches 1.. run scoreboard players reset @s rpgloot.magnite_mined

execute if score @s rpgloot.mythril_mined matches 1.. as @n[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_data": {rpgloot:{"material":"crystalline_mythril"}}}}}] run function rpgloot:ores/mythril
execute if score @s rpgloot.mythril_mined matches 1.. run scoreboard players reset @s rpgloot.mythril_mined

# Items
execute if entity @s[tag=rpgloot.titanium_ran] run tag @s remove rpgloot.titanium_ran
execute if score @s rpgloot.parry_timer matches 1.. run scoreboard players remove @s rpgloot.parry_timer 1

# Stations
execute if score @s rpgloot.interact_with_smithing_table matches 1.. run function rpgloot:station/crafter/interact

