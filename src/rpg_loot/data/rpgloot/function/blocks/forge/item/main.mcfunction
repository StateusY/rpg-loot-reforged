execute if score @s rpgloot.item_count matches 9.. run return run function rpgloot:blocks/forge/smelt/main

scoreboard players operation $global rpgloot.item_count = @n[type=item_display,tag=rpgloot.forge,distance=..2] rpgloot.item_count
execute at @n[type=item_display,tag=rpgloot.forge,distance=..2] summon minecraft:item_display run function rpgloot:blocks/forge/item/place_in_slot
scoreboard players operation @n[type=item_display,tag=rpgloot.forge,distance=..2] rpgloot.item_count = $global rpgloot.item_count