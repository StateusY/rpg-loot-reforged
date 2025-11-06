execute if score @s rpgloot.parry_timer matches ..-1 run return fail
execute if score @s rpgloot.parry_timer matches 1.. run return fail
# parrying functonality

scoreboard players set @s rpgloot.parry_timer -11
tag @s add rpgloot.parrying

function rpgc:z_api/attribute/modifier/add {source:weapon,id:physical_res,name:"parry",type:add,value:100}
function rpgc:z_api/attribute/modifier/add {source:weapon,id:ranged_res,name:"parry",type:add,value:100}
function rpgc:z_api/attribute/modifier/add {source:weapon,id:armor,name:"parry",type:mul,value:.5}