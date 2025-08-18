function rpgc:z_core/registry/list/test with storage rpgc:registry temp.all[0]
data remove storage rpgc:registry temp.all[0]
execute if data storage rpgc:registry temp.all[0] run function rpgc:z_core/registry/list/filter
