execute store result storage rpgc:temp raw_damage[0].amount int 1 run data get storage rpgc:temp raw_damage[0].amount 10
data modify storage rpgc:temp damage.sent append from storage rpgc:temp raw_damage[0]
data remove storage rpgc:temp raw_damage[0]
execute if data storage rpgc:temp raw_damage[0] run function rpgc:-/combat/hit/normalize_command
