
execute unless function rpgc:z_core/require_entity run return fail

$function rpgc:z_api/info {message:"Removed modifier $(name)"}

function rpgc:z_core/attribute/prepare_modifier

data modify storage rpgc:temp found_modifiers set value []
$data modify storage rpgc:temp found_modifiers append from storage rpgc:temp modifiers[{name:"$(name)"}]
$data remove storage rpgc:temp modifiers[{name:"$(name)"}]

function rpgc:z_core/attribute/apply_modifiers
function rpgc:z_core/attribute/cleanup_modifier

function rpgc:z_core/attribute/cleanup_temp

execute if data storage rpgc:temp found_modifiers[0] run function rpgc:z_core/attribute/update with storage rpgc:temp found_modifiers[0]
data remove storage rpgc:temp found_modifiers
