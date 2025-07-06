function rpgc:-/select/test with storage rpgc:registry temp.all[0]
data remove storage rpgc:registry temp.all[0]
execute if data storage rpgc:registry temp.all[0] run function rpgc:-/select/filter
