execute as @n[tag=rpgc.current_attacker] if entity @s[type=player] run function rpgc:-/combat/hit/split/player_kill
execute as @n[tag=rpgc.current_attacker] unless entity @s[type=player] run function rpgc:-/event/call {type:"kill",source:"entity @s HandItems[0].components.minecraft:custom_data"}

execute if entity @s[type=player] run function rpgc:-/combat/hit/split/player_death
execute unless entity @s[type=player] run function rpgc:-/event/call {type:"death",source:"entity @s HandItems[0].components.minecraft:custom_data"}