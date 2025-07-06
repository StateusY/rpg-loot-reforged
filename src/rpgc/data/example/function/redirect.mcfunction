data merge entity @s {inGround:0b,Motion:[0.0,1.0,0.0],Rotation:[0F,0F]}

tp @s ~ ~ ~ facing ^ ^20 ^10
execute facing ^ ^ ^100 run function rpgc:-/bow/apply_velocity {velocity:"0.03"}
