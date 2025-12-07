
execute store result storage rpgloot:temp venom.dmg double 0.01 run function rpgc:z_api/attribute/get {id:"physical_dmg"}
function rpgloot:parts/venom/math with storage rpgloot:temp venom