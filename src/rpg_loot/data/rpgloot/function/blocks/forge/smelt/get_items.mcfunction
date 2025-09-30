data modify storage rpgloot:temp forge.Items set value []
execute on passengers if entity @s[type=minecraft:item_display,tag=rpgloot.forge_item] run function rpgloot:blocks/forge/smelt/item_check
execute store result score $forge_item_count rpgloot.dummy run data get storage rpgloot:temp forge.Items
