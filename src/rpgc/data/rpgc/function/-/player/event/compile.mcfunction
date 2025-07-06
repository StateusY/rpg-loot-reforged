#> from: rpgc:-/player/compile

data modify storage rpgc:data current.events set value []
data modify storage rpgc:data current.events append from storage rpgc:temp selectedItem.components."minecraft:custom_data".events[]
data modify storage rpgc:data current.events append from storage rpgc:temp inventory[{Slot:-106b}].components."minecraft:custom_data".events[]
data modify storage rpgc:data current.events append from storage rpgc:temp inventory[{Slot:100b}].components."minecraft:custom_data".events[]
data modify storage rpgc:data current.events append from storage rpgc:temp inventory[{Slot:102b}].components."minecraft:custom_data".events[]
data modify storage rpgc:data current.events append from storage rpgc:temp inventory[{Slot:103b}].components."minecraft:custom_data".events[]
data modify storage rpgc:data current.events append from storage rpgc:temp inventory[{Slot:104b}].components."minecraft:custom_data".events[]
