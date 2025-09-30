scoreboard players set $iron_ingot_count rpgloot.dummy 0

execute store result score $iron_ingot_count rpgloot.dummy run data remove storage rpgloot:temp forge.Items[{id:"minecraft:iron_ingot"}]

return 1