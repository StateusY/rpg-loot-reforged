execute if score $hit_forge_check rpgloot.dummy matches 1 run return fail

execute on attacker if entity @s[tag=rpgloot.hit_forge] run scoreboard players set $hit_forge_check rpgloot.dummy 1
execute if score $hit_forge_check rpgloot.dummy matches 1 run data remove entity @s attack
execute if score $hit_forge_check rpgloot.dummy matches 1 unless score $global rpgloot.selected_slot matches 0 run return run function rpgloot:blocks/forge/hit/remove_last
execute if score $hit_forge_check rpgloot.dummy matches 1 on vehicle run scoreboard players add @s rpgloot.hit_count 1
execute if score $hit_forge_check rpgloot.dummy matches 1 on vehicle at @s run playsound minecraft:block.iron.hit block @a ~ ~ ~ 1 2
execute if score $hit_forge_check rpgloot.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:smithing_table"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5