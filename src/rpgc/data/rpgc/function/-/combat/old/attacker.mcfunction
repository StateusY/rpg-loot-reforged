
tag @s add rpgc.current_attacker

# get the weapon stats from the attacker

execute if entity @s[type=player] run data modify storage rpgc:temp attacker set from entity @s SelectedItem.components.minecraft:custom_data
execute unless entity @s[type=player] run data modify storage rpgc:temp attacker set from entity @s HandItems[0].components.minecraft:custom_data


# Mob attack cooldown
execute unless entity @s[type=player] store result storage rpgc:temp attacker.atk_cd int 1 run scoreboard players get @s rpgc.atk_cd
execute unless entity @s[type=player] run function rpgc:-/combat/hit/mob_cd with storage rpgc:temp attacker

execute store result storage rpgc:temp attacker.chance double 0.01 run scoreboard players get @s rpgc.crit_chance
scoreboard players operation .dmg_mult rpgc.temp = @s rpgc.dmg_mult

function rpgc:-/combat/hit/crit with storage rpgc:temp attacker

scoreboard players operation .armor_pen rpgc.temp = @s rpgc.armor_pen

scoreboard players operation .dmg_mult rpgc.temp += #100 constant

execute store result storage rpgc:temp attacker.mult double 0.01 run scoreboard players get .dmg_mult rpgc.temp


function rpgc:-/player/event/call {type:"hit"}

