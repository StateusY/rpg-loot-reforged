execute unless entity @s[type=player] run return fail
$function rpgc:-/player/attribute/apply {type:$(type),stat:$(stat),id:$(id),op:$(op),amt:$(amt)}
