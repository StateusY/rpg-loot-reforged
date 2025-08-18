execute unless function rpgc:z_core/require_entity run return fail

function rpgc:z_core/attribute/prepare_modifier

$data remove storage rpgc:temp modifiers[{name:"$(name)"}]

function rpgc:z_core/attribute/apply_modifiers
function rpgc:z_core/attribute/cleanup_modifier

