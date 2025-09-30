data modify entity @s item.components."minecraft:custom_data".rpgloot set value {}
particle minecraft:poof ~ ~0.4 ~ 0.1 0.1 0.1 0 4
playsound entity.item.pickup block @a ~ ~ ~ 0.6 1
execute on passengers if entity @s[type=minecraft:item_display,tag=rpgloot.forge_item] run kill @s
scoreboard players set @s rpgloot.item_count 0