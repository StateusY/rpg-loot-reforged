execute store result storage rpgloot:temp venom.mult double 0.01 run function rpgc:z_api/attribute/get {id:"dmg_mult"}
function rpgloot:parts/venom/fetch with storage rpgloot:temp venom
function rpgloot:parts/venom/math with storage rpgloot:temp venom
data remove storage rpgloot:temp venom