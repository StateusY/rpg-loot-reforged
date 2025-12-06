execute if entity @s[tag=rpgloot.storm_spear_lightning_max] if predicate {condition:"minecraft:random_chance",chance:0.1} run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 1 force
execute if entity @s[tag=rpgloot.storm_spear_lightning_high] if predicate {condition:"minecraft:random_chance",chance:0.1} run particle electric_spark ~ ~ ~ 0 0 0 1 1
particle electric_spark ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove .ray rpgloot.temp 1
execute unless score .ray rpgloot.temp matches ..0 positioned ^ ^ ^.1 run return run function rpgloot:items/storm_spear/lightning/ray
execute store result storage rpgloot:temp lightning.x double 0.4 run random value -10..10
execute store result storage rpgloot:temp lightning.y double 0.4 run random value -10..10
function rpgloot:items/storm_spear/lightning/offset with storage rpgloot:temp lightning
execute positioned ~ ~ ~ run tp @s ~ ~ ~
playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.01 2
execute if predicate {condition:"minecraft:random_chance",chance:0.27} run function rpgloot:items/storm_spear/lightning/spawn_step