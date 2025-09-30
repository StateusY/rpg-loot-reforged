execute if score $interact_forge_check rpgloot.dummy matches 1 run return fail

execute on target if entity @s[tag=rpgloot.interact_forge] run scoreboard players set $interact_forge_check rpgloot.dummy 1
execute if score $interact_forge_check rpgloot.dummy matches 1 run function rpgloot:blocks/forge/interact/found