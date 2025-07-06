
$execute store result score .variance rpgc.temp run random value -$(variance)..$(variance)

execute store result storage rpgc:temp numbers.dmg int 1 run scoreboard players operation .damage rpgc.temp += .variance rpgc.temp

execute store result score .digit1 rpgc.temp store result score .digit2 rpgc.temp run scoreboard players get .damage rpgc.temp


execute store result storage rpgc:temp numbers.1 int 1 run scoreboard players operation .digit1 rpgc.temp /= #10 constant
execute store result storage rpgc:temp numbers.2 int 1 run scoreboard players operation .digit2 rpgc.temp %= #10 constant
