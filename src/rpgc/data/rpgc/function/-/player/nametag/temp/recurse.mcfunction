scoreboard players remove .ray temp 1
execute unless function magic:testing/raycast/check run summon item_display ~ ~ ~ {Tags:["block"],item:{id:"minecraft:green_stained_glass",count:1}}
execute if entity @n[distance=..2,type=!item_display] run summon item_display ~ ~ ~ {Tags:["hitbox"],item:{id:"minecraft:red_stained_glass",count:1}}
execute if score .ray temp matches 0 run return fail
execute positioned ^ ^ ^.5 run function magic:testing/raycast/recurse
