data modify storage rpgc:temp attacker.damage set from entity @s SelectedItem.components."minecraft:custom_data".damage
#function rpgc:-/player/storage/get with entity @s

## do not know what we need all this for v



#function rpgc:-/player/attribute/get {type:"crit.chance"}
# execute store result score .random rpgc.temp run random value 1..1000 rpgc:crit
# scoreboard players set .crit rpgc.temp 0
# execute if score .random rpgc.temp <= @s rpgc.attribute.crit.chance store result score .crit rpgc.temp run function rpgc:-/player/attribute/get {type:"crit.dmg"}
# scoreboard players add .crit rpgc.temp 1000

#tellraw @a {"score":{"name":".crit","objective":"rpgc.temp"}}
