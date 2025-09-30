execute if score $forge_item_count rpgloot.dummy matches 9 \
        if function rpgloot:blocks/forge/smelt/generic/iron_ingot if score $iron_ingot_count rpgloot.dummy matches 9 \
        if function rpgloot:blocks/forge/smelt/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".rpgloot.smelt_callback set value "rpgloot:recipes/forge/iron_block"

execute if score $forge_item_count rpgloot.dummy matches 1 \
        if data storage rpgloot:temp forge.Items[{id:"minecraft:iron_block"}] \
        if function rpgloot:blocks/forge/smelt/lock \
        run return run data modify entity @s item.components."minecraft:custom_data".rpgloot.smelt_callback set value "rpgloot:recipes/forge/iron_ingot"

# execute if score $forge_item_count rpgloot.dummy matches 1 \
#         if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{rpgloot:{ingredient:{type:"crystalline_mythril"}}}}}] \
#         if function rpgloot:blocks/forge/smelt/lock \
#         run return run data modify entity @s item.components."minecraft:custom_data".rpgloot.smelt_callback set value "rpgloot:recipes/forge/mythril_gem"
