
$function rpgc:z_api/event/add {name:$(name),source:mainhand,listen:$(listen),command:'$(command)'}
data remove storage rpgc:temp mainhand.events[0]
execute if data storage rpgc:temp mainhand.events[0] run function rpgc:z_core/player/updates/macro/event with storage rpgc:temp mainhand.events[0]