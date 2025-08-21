# From <rpgc:z_api/default_damages>
$data modify storage rpgc:registry damage append value {prefix:'$(prefix)',type:$(type),color:'$(color)'}
$function rpgc:z_api/attribute/register {id:"$(type)_res",base:0,icon:"$(prefix)",color:"$(color)",tags:["damage_type"],on_update:""}
$function rpgc:z_api/attribute/register {id:"$(type)_dmg",base:0,icon:"$(prefix)",color:"$(color)",tags:["damage_type"],on_update:""}
