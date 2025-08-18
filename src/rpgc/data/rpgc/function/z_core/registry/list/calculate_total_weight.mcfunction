execute store result score .weight rpgc.temp run data get storage rpgc:registry temp.weight[0].weight
scoreboard players operation .total_weight rpgc.temp += .weight rpgc.temp
data remove storage rpgc:registry temp.weight[0]
execute if data storage rpgc:registry temp.weight[0] run function rpgc:z_core/registry/list/calculate_total_weight
