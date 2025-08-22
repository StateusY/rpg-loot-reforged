$function rpgc:z_api/attribute/modifier/add {id:$(id),source:weapon,name:$(name),type:$(type),value:$(value)}
data remove storage rpgc:temp mainhand.attributes[0]
execute if data storage rpgc:temp mainhand.attributes[0] run function rpgc:z_core/player/updates/macro/weapon/attribute with storage rpgc:temp mainhand.attributes[0]