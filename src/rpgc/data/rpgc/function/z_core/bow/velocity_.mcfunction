
$execute store result storage rpgc:temp bow.velocity float 0.001 run data get storage rpgc:temp bow.velocity $(velocity_add)

execute store result score .vel_check rpgc.temp run data get storage rpgc:temp bow.velocity 10000
execute if score .vel_check rpgc.temp > #1000 constant run data modify storage rpgc:temp bow.velocity set value .1
scoreboard players reset .vel_check