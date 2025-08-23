scoreboard players add @s rpgloot.shade_timer 1
execute unless score @s rpgloot.shade_timer matches 40.. run return fail
#execute as target run function rpgc:z_api/damage 
particle large_smoke ~ ~ ~ 0 0 0 0.5 15 normal
$function rpgc:z_api/damage {target:"$(target)",damage:[{type:"wither",value:$(damage)}]}
function rpg_loot:items/shadow_crown/shade/reset with entity @s data