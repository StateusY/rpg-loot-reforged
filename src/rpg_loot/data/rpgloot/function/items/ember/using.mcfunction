scoreboard players operation @s rpgloot.ember_charge = @s rpgc.drawing
scoreboard players operation @s rpgloot.ember_charge *= #100 constant
execute store result score .temp rpgc.temp run data get entity @s SelectedItem.components.minecraft:custom_data.bow.draw
scoreboard players operation @s rpgloot.ember_charge /= .temp rpgc.temp
execute store result storage rpgloot:temp draw_percent double 1 run scoreboard players get @s rpgloot.ember_charge
execute store result storage rpgloot:temp draw_speed double 0.01 run function rpgc:z_api/attribute/get {id:draw_speed}
function rpgloot:items/ember/overdraw_percent with storage rpgloot:temp

execute if score @s rpgloot.ember_charge matches 150.. run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_model_data",floats:{values:[200],mode:"replace_all"}}