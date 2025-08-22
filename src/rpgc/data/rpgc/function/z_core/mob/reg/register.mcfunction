# From <rpgc:z_api/register_mob>
execute if data storage rpgc:registry builder run function rpgc:z_core/mob/reg/finalize_register with storage rpgc:registry builder
$data modify storage rpgc:registry builder set value {type:"$(type)",properties:{weight:1,bar_size:100,predicate:"[]",hp:404,name:'{"text":"Error","color":"red","bold":true}'}}
