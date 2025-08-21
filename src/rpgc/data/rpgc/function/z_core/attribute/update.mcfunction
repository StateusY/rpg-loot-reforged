$function rpgc:z_core/exec with storage rpgc:registry attribute.$(id)
data remove storage rpgc:temp found_modifiers[0]
execute if data storage rpgc:temp found_modifiers[0] run function rpgc:z_core/attribute/update with storage rpgc:temp found_modifiers[0]

