$function rpgc:z_api/info {message:"Getting value of attribute $(id) on generic entity"}

$execute if data entity @s data.attributes.$(id) run return run data get entity @s data.attributes.$(id) 100
$return run data get storage rpgc:registry attribute.$(id).base 100

