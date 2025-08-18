$function rpgc:z_api/attribute/modifier/add {id:max_hp,name:base,type:add,value:$(hp)}
execute store result entity @s data.current_hp double 0.01 run function rpgc:z_api/attribute/get {id:max_hp}

