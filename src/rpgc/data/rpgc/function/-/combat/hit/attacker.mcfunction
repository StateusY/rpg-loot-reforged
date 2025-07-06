tag @s add rpgc.current_attacker
execute unless entity @s[type=player] run function rpgc:-/combat/hit/split/mob_attacker
execute if entity @s[type=player] run function rpgc:-/combat/hit/split/player_attacker

data modify storage rpgc:temp damage.sent set value []
execute if data storage rpgc:temp attacker.damage[0] run function rpgc:-/combat/hit/iterate/loop

execute store result score .armor_pen rpgc.temp run function rpgc:-/player/attribute/get {type:"armor_pen"}

