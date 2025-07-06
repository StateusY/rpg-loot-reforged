
execute as @p[tag=rpgc.current_attacker] run function rpgc:-/player/event/call {type:'victim'}


# Apply Regen Delay
execute if entity @s[type=player] run function rpgc:-/player/regeneration/reset
scoreboard players operation @s[type=!player] rpgc.current_regen_delay = @s rpgc.regen_delay
execute store result score .divide rpgc.temp run data get storage rpgc:temp attacker.damage

function rpgc:-/player/event/call {type:"hurt"}
scoreboard players operation .armor rpgc.temp = @s rpgc.armor
scoreboard players operation .armor rpgc.temp -= .armor_pen rpgc.temp
execute if score .armor rpgc.temp matches ..-1 run scoreboard players set .armor rpgc.temp 0
execute if score .armor rpgc.temp matches 1123.. run scoreboard players set .armor rpgc.temp 1122
execute store result storage rpgc:temp armor.index int 1 run scoreboard players get .armor rpgc.temp
function rpgc:-/combat/math/armor_fetch with storage rpgc:temp armor

execute store result storage rpgc:temp armor.flat int .1 run scoreboard players get .armor rpgc.temp
execute store result score .flat rpgc.temp run data get storage rpgc:temp armor.flat 1

scoreboard players reset .armor
scoreboard players reset .armor_pen

function rpgc:-/combat/hit/calc with storage rpgc:temp attacker.damage[0]

# Mob display update
execute if entity @s[type=!player] run function rpgc:-/mob/display/bar
# Player hud update
execute if entity @s[type=player] run function rpgc:-/player/hud/update


execute unless entity @s[tag=rpgc.statused] run particle minecraft:item{item:"redstone_block"} ~ ~1 ~ 0 0 0 0.1 25 force

scoreboard players reset .damage
scoreboard players reset .min
scoreboard players reset .digit1
scoreboard players reset .digit2
scoreboard players reset .divide
scoreboard players reset .temp
scoreboard players reset .variance
scoreboard players reset .total

data remove storage rpgc:temp numbers
data remove storage rpgc:temp variance
data remove storage rpgc:temp attacker
data remove storage rpgc:temp armor

tag @s remove rpgc.current_victim
tag @n[tag=rpgc.current_attacker] remove rpgc.current_attacker
