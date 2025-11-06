
$execute unless entity @n[scores={rpgc.id=$(id)},distance=..50] run function rpgloot:items/basic/magnite/armor/perish with entity @s data
$execute positioned as @n[scores={rpgc.id=$(id)}] run tp @s ~ ~ ~