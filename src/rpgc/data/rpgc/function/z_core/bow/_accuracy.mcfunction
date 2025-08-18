$execute store result storage rpgc:temp bow.accuracy double $(accuracy) run data get storage rpgc:temp bow.inaccuracy
execute store result score .1 rpgc.temp run data get storage rpgc:temp bow.inaccuracy
execute store result score .2 rpgc.temp run data get storage rpgc:temp bow.accuracy
execute store result storage rpgc:temp bow.inaccuracy int 1 run scoreboard players operation .1 rpgc.temp -= .2 rpgc.temp