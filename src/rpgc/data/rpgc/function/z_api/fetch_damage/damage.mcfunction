$execute store result score .dmg rpgc.temp run function rpgc:z_api/attribute/get {id:$(type)_dmg}
execute unless score .dmg rpgc.temp >= #1 constant run return 0
scoreboard players operation .dmg rpgc.temp *= .dmg_mult rpgc.temp
scoreboard players operation .dmg rpgc.temp /= #100 constant
scoreboard players operation .dmg_out rpgc.temp += .dmg rpgc.temp
