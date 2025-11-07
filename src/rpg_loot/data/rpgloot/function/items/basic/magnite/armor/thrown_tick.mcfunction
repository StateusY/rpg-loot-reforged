scoreboard players add @s rpgloot.magnite_count 1
execute unless score @s rpgloot.magnite_count matches 5.. run return fail
particle electric_spark ~ ~.75 ~ 0.1 0.1 0.1 1 25 normal
particle item{item:dirt} ~ ~.75 ~ 0 0 0 0.1 25 normal
$function rpgc:z_api/damage {damage:[{type:"physical",value:$(armor)}],target:"@n[type=#rpgc:all,distance=..3]"}
playsound item.shield.block player @a ~ ~ ~ 1 0
function rpgloot:items/basic/magnite/armor/kill