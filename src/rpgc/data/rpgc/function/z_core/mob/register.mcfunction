# From <rpgc:z_api/register_mob>

execute if data storage rpgc:registry builder run function rpgc:z_core/mob/finalize_register with storage rpgc:registry builder
$data modify storage rpgc:registry builder set value {type:"$(type)",properties:{weight:1,predicate:"[]",hp:404,name:'{"text":"Error","color":"red","bold":true}'}}
