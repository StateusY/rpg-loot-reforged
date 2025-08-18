execute unless function rpgc:z_core/require_entity run return fail
$execute unless data storage rpgc:registry attribute.$(id) run return run function rpgc:z_api/error {message:"Can't add modifier for attribute $(id) as it doesn't exist!"}

$function rpgc:z_api/info {message:"Added modifier $(name) with id $(id) and value $(value)"}

function rpgc:z_core/attribute/prepare_modifier

$data remove storage rpgc:temp modifiers[{name:"$(name)",id:"$(id)"}]
$data modify storage rpgc:temp modifiers append value {name:"$(name)",id:"$(id)",type:"$(type)",value:$(value)}

function rpgc:z_core/attribute/apply_modifiers
function rpgc:z_core/attribute/cleanup_modifier

function rpgc:z_core/attribute/cleanup_temp

