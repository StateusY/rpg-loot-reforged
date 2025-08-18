$function rpgc:z_api/info {message:"Getting value of attribute $(id) on player"}

function rpgc:z_core/player/data/context
function rpgc:z_core/player/data/load
$execute if data storage rpgc:player context.data.attributes.$(id) run return run data get storage rpgc:player context.data.attributes.$(id) 100
$return run data get storage rpgc:registry attribute.$(id).base 100

