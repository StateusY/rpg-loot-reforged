scoreboard players add @s rpgloot.smelt_time 1

execute if score @s rpgloot.smelt_time matches 1 run playsound minecraft:block.smithing_table.use block @a ~ ~ ~ 1 0.8

execute if score @s rpgloot.smelt_time matches 10.. run tag @s remove rpgloot.smelting
execute if score @s rpgloot.smelt_time matches 10.. run function rpgloot:blocks/forge/smelt/finish with entity @s item.components."minecraft:custom_data".rpgloot
execute if score @s rpgloot.smelt_time matches 10.. run scoreboard players set @s rpgloot.smelt_time 0