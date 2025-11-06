$execute unless entity @n[scores={rpgc.id=$(id)},distance=..50] run kill @s
$execute at @s anchored eyes facing entity @n[scores={rpgc.id=$(id)}] feet positioned ^ ^1 ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~
particle dust{color:[0.612,0.000,0.000],scale:1} ~ ~ ~ 0 0 0 0 0 normal
$execute unless entity @n[scores={rpgc.id=$(id)},distance=..0.5] run return fail

kill @s