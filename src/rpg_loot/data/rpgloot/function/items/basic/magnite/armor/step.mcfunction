
$execute as @n[type=armor_stand,tag=rpgloot.magnite_orbit,scores={rpgloot.magnite_charge=$(id)}] run function rpgloot:items/basic/magnite/armor/throw
scoreboard players remove @s rpgloot.magnite_count 1