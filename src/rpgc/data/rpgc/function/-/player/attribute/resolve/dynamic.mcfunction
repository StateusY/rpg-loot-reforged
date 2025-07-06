scoreboard players set add rpgc.temp 0
data modify storage rpgc:temp attributes.add set value []
$data modify storage rpgc:temp attributes.add append from storage rpgc:data current.attributes.add[{type:"$(type)"}]
execute if data storage rpgc:temp attributes.add[0] run function rpgc:-/player/attribute/resolve/add

scoreboard players set mul rpgc.temp 10
data modify storage rpgc:temp attributes.mul set value []
$data modify storage rpgc:temp attributes.mul append from storage rpgc:data current.attributes.mul[{type:"$(type)"}]
execute if data storage rpgc:temp attributes.mul[0] run function rpgc:-/player/attribute/resolve/mul

$scoreboard players operation attribute rpgc.temp = $(base_score)
function rpgc:-/player/attribute/resolve/total

$scoreboard objectives add rpgc.attribute.$(type) dummy
$scoreboard players operation @s rpgc.attribute.$(type) = attribute rpgc.temp

data remove storage rpgc:temp attributes
