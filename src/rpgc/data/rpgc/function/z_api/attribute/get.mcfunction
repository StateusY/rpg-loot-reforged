execute unless function rpgc:z_core/require_entity run return fail
$execute unless data storage rpgc:registry attribute.$(id) run return run function rpgc:z_api/error {message:"Can't get value of attribute $(id) as it doesn't exist"}
$execute if entity @s[type=player] run return run function rpgc:z_core/attribute/get_player {id:"$(id)"}
$return run function rpgc:z_core/attribute/get_generic {id:"$(id)"}

