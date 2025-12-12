execute unless block ~ ~.1 ~ #rpgloot:can_pass_through positioned ~ ~.1 ~ run return run function rpgloot:items/basic/silver/sword/move with entity @s data
execute if block ~ ~-.1 ~ #rpgloot:can_pass_through positioned ~ ~-.1 ~ run return run function rpgloot:items/basic/silver/sword/move with entity @s data

execute positioned ^ ^1 ^ align y run summon marker ~ ~ ~ {Tags:["rpgloot.silver_spike_location"]}
scoreboard players operation @n[type=marker,tag=rpgloot.silver_spike_location] rpgloot.silver_spike_casting = @s rpgloot.silver_spike_casting
rotate @n[type=marker,tag=rpgloot.silver_spike_location] ~180 ~

execute positioned ^ ^.25 ^ align y unless entity @n[type=block_display,tag=rpgloot.block_shatter,distance=..1] run function rpgloot:util/shatter_block {duration:150,shrink:20}
execute positioned ^1 ^.25 ^ align y unless entity @n[type=block_display,tag=rpgloot.block_shatter,distance=..1] run function rpgloot:util/shatter_block {duration:150,shrink:20}
execute positioned ^-1 ^.25 ^ align y unless entity @n[type=block_display,tag=rpgloot.block_shatter,distance=..1] run function rpgloot:util/shatter_block {duration:150,shrink:20}
$tp @s ^ ^ ^-$(speed)