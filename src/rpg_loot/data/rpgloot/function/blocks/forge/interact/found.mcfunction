data remove entity @s interaction

execute on vehicle if entity @s[tag=rpgloot.smelting] run return fail

execute if entity @p[tag=rpgloot.interact_forge,predicate=rpgloot:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=rpgloot.forge_item] on vehicle at @s run return run function rpgloot:blocks/forge/item/clear
execute unless items entity @p[tag=rpgloot.interact_forge] weapon.mainhand * on vehicle on passengers if entity @s[type=minecraft:item_display,tag=rpgloot.forge_item] on vehicle at @s run return run function rpgloot:blocks/forge/smelt/main
execute if items entity @p[tag=rpgloot.interact_forge] weapon.mainhand * at @s run return run function rpgloot:blocks/forge/item/main