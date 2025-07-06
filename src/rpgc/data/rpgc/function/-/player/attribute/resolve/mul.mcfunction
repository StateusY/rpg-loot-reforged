execute store result storage rpgc:temp amount int 1 run data get storage rpgc:temp attributes.mul[0].amount 10
execute store result score amount rpgc.temp run data get storage rpgc:temp amount
scoreboard players operation mul rpgc.temp += amount rpgc.temp

data remove storage rpgc:temp attributes.mul[0]
execute if data storage rpgc:temp attributes.mul[0] run function rpgc:-/player/attribute/resolve/mul
