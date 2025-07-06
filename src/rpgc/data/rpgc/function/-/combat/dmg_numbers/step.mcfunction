execute store result storage rpgc:temp numbers.x double 0.01 run random value -20..20
execute store result storage rpgc:temp numbers.y double 0.01 run random value 10..20
execute store result storage rpgc:temp numbers.z double 0.01 run random value -20..20
execute if score .crit rpgc.temp matches 1001.. run return run function rpgc:-/combat/dmg_numbers/number_crit with storage rpgc:temp numbers
function rpgc:-/combat/dmg_numbers/number with storage rpgc:temp numbers
