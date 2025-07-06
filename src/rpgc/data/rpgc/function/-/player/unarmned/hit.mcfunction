advancement revoke @s only rpgc:unarmed
execute if data entity @s SelectedItem.components.minecraft:custom_data.damage run return fail
execute as @p[tag=rpgc.struck] at @s run return run function rpgc:-/player/unarmned/bonk
execute as @n[type=#rpgc:mob,nbt={HurtTime:10s}] at @s run function rpgc:damage {damage:[{type:'physical',amount:1}]}