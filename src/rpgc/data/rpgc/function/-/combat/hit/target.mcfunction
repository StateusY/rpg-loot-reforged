execute if entity @s[type=ender_dragon] run scoreboard players add #dragon rpgc.temp 1
execute if entity @s[type=ender_dragon] as @n[type=ender_dragon] if score #dragon rpgc.temp matches 1 run return run function rpgc:-/combat/hit/target
#> from: rpgc:damage
execute if entity @s[gamemode=creative] run return fail
execute if entity @s[gamemode=spectator] run return fail
# Apply regen delay
execute if entity @s[type=player] run function rpgc:-/player/regeneration/reset
scoreboard players operation @s[type=!player] rpgc.current_regen_delay = @s rpgc.regen_delay

# Get armor attribute
function rpgc:-/combat/hit/get_armor

scoreboard players operation .armor rpgc.temp -= .armor_pen rpgc.temp
# Prevent negative armor
execute if score .armor rpgc.temp matches ..-1 run scoreboard players set .armor rpgc.temp 0

## Armor logarithmic curve

# Get flat damage reduction (uncapped)
execute store result score .armor_flat rpgc.temp run scoreboard players get .armor rpgc.temp
# Cap Armor value for log
execute if score .armor rpgc.temp matches 1123.. run scoreboard players set .armor rpgc.temp 1122
# Fetch log value

execute store result storage rpgc:temp armor.index int 1 run scoreboard players get .armor rpgc.temp
function rpgc:-/combat/math/armor_curve with storage rpgc:temp armor


#events
execute if entity @s[type=player] run function rpgc:-/combat/hit/split/player_hurt
execute unless entity @s[type=player] run function rpgc:-/event/call {type:"hurt",source:"entity @s HandItems[0].components.minecraft:custom_data"}


#storage rpgc:temp damage.sent
execute if data storage rpgc:temp damage.sent[0] run function rpgc:-/combat/hit/calc with storage rpgc:temp damage.sent[0]

scoreboard players reset .armor rpgc.temp
scoreboard players reset .armor_pen rpgc.temp

# Mob display update
execute if entity @s[type=!player] run function rpgc:-/mob/display/bar
# Player hud update
execute if entity @s[type=player] run function rpgc:-/player/hud/update
execute if score .crit rpgc.temp matches 1001.. run playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 1 2
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-.5 ~ if score .crit rpgc.temp matches 1001.. run particle wax_on ~ ~ ~ 0 0 0 10 5 force

execute anchored eyes positioned ^ ^ ^ positioned ~ ~-.5 ~ run particle minecraft:item{item:"redstone_block"} ~ ~ ~ 0 0 0 0.1 5 force

damage @s 0.000001 rpgc:hit
scoreboard players set .crit rpgc.temp 1000
scoreboard players reset #dragon
tag @s remove rpgc.current_victim
tag @n[tag=rpgc.current_attacker] remove rpgc.current_attacker
