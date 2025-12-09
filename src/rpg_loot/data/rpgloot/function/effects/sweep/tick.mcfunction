execute unless score @s rpgloot.effect0 matches 1.. on vehicle run data modify entity @s item.components.minecraft:item_model set value "rpgloot:effects/sweep/sweep"
scoreboard players add @s rpgloot.effect0 1
execute store result storage rpgloot:temp effect.sweep int 1 run scoreboard players get @s rpgloot.effect0
execute on vehicle run item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{values:[{type:"minecraft:storage",storage:"rpgloot:temp",path:"effect.sweep"}],mode:"replace_all"}}
data remove storage rpgloot:temp effect
execute unless score @s rpgloot.effect0 matches 8.. run return fail
execute on vehicle run kill @s
scoreboard players reset @s
kill @s
