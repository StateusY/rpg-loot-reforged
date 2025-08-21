#> from: rpgc:z_core/player/tick

execute store result score @s rpgc.slot0 run data get entity @s SelectedItemSlot
execute unless score @s rpgc.slot0 = @s rpgc.slot1 run scoreboard players set @s rpgc.queue_swap 1
execute unless score @s rpgc.slot0 = @s rpgc.slot1 run execute store result score @s rpgc.slot1 run data get entity @s SelectedItemSlot

execute if score @s rpgc.using matches 1.. if score @s rpgc.using = @s rpgc.stop_using run function rpgc:z_core/player/updates/stoped_using
scoreboard players operation @s rpgc.stop_using = @s rpgc.using