#> from z_api/register_mob
$function rpgc:z_api/info {message:'registering a mob with $(properties)'}
$execute if data storage rpgc:registry builder run data merge storage rpgc:registry {builder:{properties:$(properties)}}
