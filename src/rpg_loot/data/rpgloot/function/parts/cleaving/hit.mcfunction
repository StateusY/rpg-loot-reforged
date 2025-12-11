
execute if entity @s[tag=rpgloot.cleave_player] run return fail
execute as @n[type=#rpgc:all,tag=rpgc.current_victim] run tag @s add rpgloot.cleave_origin
tag @s add rpgloot.cleave_player
function rpgc:z_api/attribute/modifier/add {source:cleave,id:dmg_mult,name:cleave_damage_reduce,type:mul,value:-0.90}

function rpgc:z_api/damage_by {target:"@e[type=#rpgc:all,distance=..6,tag=!rpgloot.cleave_player,tag=!rpgloot.cleave_origin,limit=10]",by:"@s"}
tag @s remove rpgloot.cleave_player
function rpgc:z_api/attribute/modifier/remove_by_name {name:"cleave_damage_reduce"}
execute as @n[type=#rpgc:all,tag=rpgloot.cleave_origin] run tag @s remove rpgloot.cleave_origin