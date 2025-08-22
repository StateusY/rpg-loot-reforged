$function rpgc:z_api/attribute/modifier/add {id:$(id),source:equipment,name:$(name),type:$(type),value:$(value)}
data remove storage rpgc:temp equipment.attributes[0]
execute if data storage rpgc:temp equipment.attributes[0] run function rpgc:z_core/player/updates/macro/equipment/attribute with storage rpgc:temp equipment.attributes[0]