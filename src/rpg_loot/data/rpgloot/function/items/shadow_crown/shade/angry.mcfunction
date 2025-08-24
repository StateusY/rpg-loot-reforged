$execute at @s anchored eyes facing entity $(target) feet positioned ^ ^1 ^2 rotated as @s positioned ^ ^ ^3 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^.2 ^.2 ^$(speed) ~ ~
$execute as $(target) unless entity @s[distance=..3] run return fail 
function rpgloot:items/shadow_crown/shade/orbit with entity @s data