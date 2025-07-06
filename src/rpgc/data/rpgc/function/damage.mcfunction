$data modify storage rpgc:temp raw_damage set value $(damage)
data modify storage rpgc:temp damage set value {sent:[]}
execute if data storage rpgc:temp raw_damage[0] run function rpgc:-/combat/hit/normalize_command
function rpgc:-/combat/hit/target
