$execute unless entity $(owner) run function rpg_loot:items/shadow_crown/shade/lost {owner:'$(owner)'}
$execute at $(owner) unless entity @s[distance=..50] run function rpg_loot:items/shadow_crown/shade/lost {owner:'$(owner)'}
$execute at @s anchored eyes facing entity $(owner) eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^$(speed) ~ ~
