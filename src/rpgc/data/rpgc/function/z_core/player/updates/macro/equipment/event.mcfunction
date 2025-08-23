
$function rpgc:z_api/event/add {name:$(name),source:$(source),listen:$(listen),command:'$(command)'}
data remove storage rpgc:temp equipment.events[0]
execute if data storage rpgc:temp equipment.events[0] run function rpgc:z_core/player/updates/macro/equipment/event with storage rpgc:temp equipment.events[0]