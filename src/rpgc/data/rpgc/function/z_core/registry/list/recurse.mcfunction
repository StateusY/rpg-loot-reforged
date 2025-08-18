execute store result score .weight rpgc.temp run data get storage rpgc:registry temp.filtered[0].weight
scoreboard players operation .selection rpgc.temp -= .weight rpgc.temp
execute unless score .selection rpgc.temp matches 1.. run return run data modify storage rpgc:registry temp.result set from storage rpgc:registry temp.filtered[0]
data remove storage rpgc:registry temp.filtered[0]
execute if data storage rpgc:registry temp.filtered[0] run function rpgc:z_core/registry/list/recurse
