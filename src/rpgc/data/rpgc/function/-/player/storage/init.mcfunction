execute unless data storage rpgc:data player[0] run data modify storage rpgc:data player set value []
$data remove storage rpgc:data player[{UUID:$(UUID)}]

data modify storage rpgc:data current set value {attributes:{base:[{type:"max_hp",operation:"add",amount:0},{type:"crit.chance",operation:"add",amount:15},{type:"crit.dmg",operation:"add",amount:25}]},events:[]}
data modify storage rpgc:data current.UUID set from entity @s UUID
data modify storage rpgc:data current.STRINGUUID set from storage rpgc:uuid out
execute store result storage rpgc:data current.attributes.base[0].amount double 0.1 run scoreboard players get @s rpgc.max_hp

data modify storage rpgc:data player append from storage rpgc:data current
