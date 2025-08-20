$function rpgc:z_core/exec with storage rpgc:registry attribute.$(id)
$data remove storage rpgc:temp modifiers[{id:"$(id)"}]
execute if data storage rpgc:temp found_modifiers[0] run function rpgc:z_core/attribute/update_by_name with storage rpgc:temp found_modifiers[0]

