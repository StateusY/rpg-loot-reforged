# remove setup item frame
kill @s

# place sound
playsound minecraft:block.copper.place block @a ~ ~ ~ 1 2

# spawn the forge
execute unless block ~ ~ ~ #minecraft:air run return run loot spawn ~ ~ ~ loot rpgloot:blocks/forge
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=smithed.block,distance=..0.1] at @s run return run loot spawn ~ ~ ~ loot rpgloot:blocks/forge

setblock ~ ~ ~ minecraft:barrier

# rotate to player orientation
data modify storage rpgloot:temp rotation set value 0
execute store result score $player_rotation rpgloot.dummy run data get entity @p[advancements={rpgloot:item_frame=true}] Rotation[0]
execute if score $player_rotation rpgloot.dummy matches 135..180 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage rpgloot:temp rotation set value 90
execute if score $player_rotation rpgloot.dummy matches -180..-135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage rpgloot:temp rotation set value 90
execute if score $player_rotation rpgloot.dummy matches -135..-45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage rpgloot:temp rotation set value 180
execute if score $player_rotation rpgloot.dummy matches -45..45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage rpgloot:temp rotation set value -90
execute if score $player_rotation rpgloot.dummy matches 45..135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage rpgloot:temp rotation set value 0

# run data to macro
function rpgloot:blocks/forge/macro with storage rpgloot:temp
scoreboard players set @n[type=minecraft:item_display,tag=rpgloot.forge] rpgloot.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=rpgloot.forge] rpgloot.hit_timer 0
scoreboard players set @n[type=minecraft:item_display,tag=rpgloot.forge] rpgloot.item_count 0
scoreboard players set @n[type=minecraft:item_display,tag=rpgloot.forge] rpgloot.smelt_time 0
execute as @n[type=minecraft:item_display,tag=rpgloot.forge] run data modify storage rpgloot:temp forge.occupied_slots set value []