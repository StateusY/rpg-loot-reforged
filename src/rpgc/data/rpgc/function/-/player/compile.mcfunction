#> from: rpgc:-/player/tick
tag @s remove rpgc.update
function rpgc:-/player/storage/get with entity @s
data modify storage rpgc:temp selectedItem set from entity @s SelectedItem
data modify storage rpgc:temp inventory set value []
data modify storage rpgc:temp inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{}}}]

function rpgc:-/player/attribute/compile
function rpgc:-/player/event/compile

data remove storage rpgc:temp selectedItem
data remove storage rpgc:temp inventory

function rpgc:-/player/storage/set with entity @s
