# from cloudwolf
execute unless block ~0.5 ~ ~ #bs.hitbox:can_pass_through store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~-0.5 ~ ~ #bs.hitbox:can_pass_through store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute unless block ~ ~0.5 ~ #bs.hitbox:can_pass_through store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~-0.5 ~ #bs.hitbox:can_pass_through store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute unless block ~ ~ ~0.5 #bs.hitbox:can_pass_through run function rpgloot:items/basic/wood/bow/zplane
execute unless block ~ ~ ~-0.5 #bs.hitbox:can_pass_through run function rpgloot:items/basic/wood/bow/zplane

execute rotated as @s run function rpgloot:items/basic/wood/bow/direction