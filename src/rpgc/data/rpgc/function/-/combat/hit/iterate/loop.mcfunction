function rpgc:-/combat/hit/iterate/apply with storage rpgc:temp attacker.damage[0]

# continue to next instance
data remove storage rpgc:temp attacker.damage[0]
execute if data storage rpgc:temp attacker.damage[0] run function rpgc:-/combat/hit/iterate/loop
