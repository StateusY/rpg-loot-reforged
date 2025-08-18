$data modify storage rpgc:registry temp.all set from storage rpgc:registry $(registry)."$(entry)"

data modify storage rpgc:registry temp.filtered set value []
execute if data storage rpgc:registry temp.all[0] run function rpgc:z_core/registry/list/filter

data modify storage rpgc:registry temp.weight set from storage rpgc:registry temp.filtered
scoreboard players set .total_weight rpgc.temp 0
execute if data storage rpgc:registry temp.weight[0] run function rpgc:z_core/registry/list/calculate_total_weight
execute store result storage rpgc:registry temp.random int 1 run scoreboard players get .total_weight rpgc.temp
execute unless score .total_weight rpgc.temp matches 1.. run return fail

function rpgc:z_core/registry/list/random with storage rpgc:registry temp
execute if data storage rpgc:registry temp.filtered[0] run function rpgc:z_core/registry/list/recurse
