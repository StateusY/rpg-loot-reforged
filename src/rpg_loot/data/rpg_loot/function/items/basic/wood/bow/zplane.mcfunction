### 180 - Rotation[0]

scoreboard players set #temp raycast 18000
execute store result score #temp1 raycast run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #temp raycast -= #temp1 raycast