advancement revoke @s only rpgloot:interact_forge

tag @s add rpgloot.crafter_open
dialog show @s rpgloot:crafting/menu

return fail

scoreboard players set $interact_forge_check rpgloot.dummy 0

tag @s add rpgloot.interact_forge
execute as @e[type=minecraft:interaction,tag=rpgloot.forge_interaction,distance=..20] run function rpgloot:blocks/forge/interact/check
tag @s remove rpgloot.interact_forge