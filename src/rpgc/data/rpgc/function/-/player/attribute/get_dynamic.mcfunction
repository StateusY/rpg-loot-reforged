$function rpgc:-/player/attribute/resolve/dynamic {type:"$(type)",base_score:"$(base_score)"}
$return run scoreboard players get @s rpgc.attribute.$(type)
