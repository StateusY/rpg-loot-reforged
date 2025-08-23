$execute store result score .dmg rpgc.temp run function rpgc:z_api/attribute/get {id:$(type)_dmg}
execute unless score .dmg rpgc.temp >= #1 constant run return 0
scoreboard players operation .dmg rpgc.temp *= .dmg_mult rpgc.temp
$data modify storage rpgc:temp combat.all_dmg prepend value {type:"$(type)",value:"null"}
execute store result storage rpgc:temp combat.all_dmg[0].value double 0.0001 run scoreboard players get .dmg rpgc.temp
