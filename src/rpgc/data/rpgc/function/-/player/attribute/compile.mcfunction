#> from: rpgc:-/player/compile
# attributes:[{type:"dmg.fire",operation:"add",amount:10}]

# gather all into temp
data modify storage rpgc:temp attributes set value []
data modify storage rpgc:temp attributes append from storage rpgc:data current.attributes.base[]
data modify storage rpgc:temp attributes append from storage rpgc:temp selectedItem.components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp attributes append from storage rpgc:temp inventory[{Slot:-106b}].components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp attributes append from storage rpgc:temp inventory[{Slot:100b}].components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp attributes append from storage rpgc:temp inventory[{Slot:102b}].components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp attributes append from storage rpgc:temp inventory[{Slot:103b}].components."minecraft:custom_data".attributes[]
data modify storage rpgc:temp attributes append from storage rpgc:temp inventory[{Slot:104b}].components."minecraft:custom_data".attributes[]

# split all into add and mul
data modify storage rpgc:data current.attributes.add set value []
data modify storage rpgc:data current.attributes.add append from storage rpgc:temp attributes[{operation:"add"}]
data modify storage rpgc:data current.attributes.mul set value []
data modify storage rpgc:data current.attributes.mul append from storage rpgc:temp attributes[{operation:"mul"}]

#invalidate previous cache
data modify storage rpgc:data current.attributes.cached set value []

# cleanup
data remove storage rpgc:temp attributes

# special case to always update max_hp
execute store result score @s rpgc.max_hp run function rpgc:-/player/attribute/get {type:"max_hp"}
execute if score @s rpgc.hp > @s rpgc.max_hp run function rpgc:-/player/attribute/hp_clamp
