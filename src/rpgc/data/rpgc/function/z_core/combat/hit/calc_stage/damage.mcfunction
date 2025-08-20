
execute store result score .current_dmg rpgc.temp run data get storage rpgc:temp combat.dmg[0].value 100
## Armor calculations

# reduce by flat amount
scoreboard players operation .current_dmg rpgc.temp -= .armor_reduce rpgc.temp
execute if score .current_dmg rpgc.temp matches ..0 run scoreboard players set .current_dmg rpgc.temp 0

# reduce by percentage
scoreboard players operation .a rpgc.temp = .current_dmg rpgc.temp
# tellraw @a ["a =",{"score":{"name":".a","objective":"rpgc.temp"}}]
# tellraw @a ["b =",{"score":{"name":".armor_res","objective":"rpgc.temp"}}]
scoreboard players operation .a rpgc.temp *= .armor_res rpgc.temp
# tellraw @a ["c =",{"score":{"name":".a","objective":"rpgc.temp"}}]
scoreboard players operation .a rpgc.temp /= #100 constant
# tellraw @a ["d =",{"score":{"name":".a","objective":"rpgc.temp"}}]
scoreboard players operation .current_dmg rpgc.temp -= .a rpgc.temp
# tellraw @a ["f =",{"score":{"name":".current_dmg","objective":"rpgc.temp"}}]

# resistance calculation
$execute store result score .current_res rpgc.temp run function rpgc:z_api/attribute/get {id:$(type)_res}
scoreboard players operation .a rpgc.temp = .current_dmg rpgc.temp
# tellraw @a ["a =",{"score":{"name":".a","objective":"rpgc.temp"}}]
# tellraw @a ["b =",{"score":{"name":".current_res","objective":"rpgc.temp"}}]
scoreboard players operation .a rpgc.temp *= .current_res rpgc.temp
# tellraw @a ["c =",{"score":{"name":".a","objective":"rpgc.temp"}}]
scoreboard players operation .a rpgc.temp /= #100 constant
# tellraw @a ["d =",{"score":{"name":".a","objective":"rpgc.temp"}}]
scoreboard players operation .current_dmg rpgc.temp -= .a rpgc.temp
# tellraw @a ["f =",{"score":{"name":".current_dmg","objective":"rpgc.temp"}}]

scoreboard players operation @s rpgc.hp -= .current_dmg rpgc.temp

# damage number setup
$data modify storage rpgc:temp numbers set from storage rpgc:registry damage[{type:$(type)}]
execute store result storage rpgc:temp numbers.value double 0.01 run scoreboard players get .current_dmg rpgc.temp
function rpgc:z_core/combat/hit/calc_stage/dmg_numbers/prep

# recursive loop
data remove storage rpgc:temp combat.dmg[0]
execute if data storage rpgc:temp combat.dmg[0] run function rpgc:z_core/combat/hit/calc_stage/damage with storage rpgc:temp combat.dmg[0]

execute if score @s rpgc.hp matches ..0 run function rpgc:z_core/combat/hit/death