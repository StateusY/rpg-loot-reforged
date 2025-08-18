#         called from this advancement v
advancement revoke @s only rpgc:drawing_bow

#incriments every tick the player is drawing a bow for
scoreboard players add @s rpgc.drawing 1

#caluclates the draw percent based on draw time
scoreboard players operation @s rpgc.draw_percent = @s rpgc.drawing
scoreboard players operation @s rpgc.draw_percent *= #100 constant
execute store result score .temp rpgc.temp run data get entity @s SelectedItem.components.minecraft:custom_data.bow.draw
scoreboard players operation @s rpgc.draw_percent /= .temp rpgc.temp
execute if score @s rpgc.draw_percent matches 101.. run scoreboard players set @s rpgc.draw_percent 100
