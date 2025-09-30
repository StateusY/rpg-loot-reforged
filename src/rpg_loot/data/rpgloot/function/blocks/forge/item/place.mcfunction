scoreboard players add $global rpgloot.item_count 1
execute if score $global rpgloot.item_count matches 1 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[-0.315f,0.5f,0.315f]},Tags:["rpgloot.forge_item","rpgloot.forge_1"],interpolation_duration:3,teleport_duration:2}

execute if score $global rpgloot.item_count matches 2 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[-0.315f,0.5f,0f]},Tags:["rpgloot.forge_item","rpgloot.forge_2"],interpolation_duration:3,teleport_duration:2}

execute if score $global rpgloot.item_count matches 3 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[-0.315f,0.5f,-0.315f]},Tags:["rpgloot.forge_item","rpgloot.forge_3"],interpolation_duration:3,teleport_duration:2}

execute if score $global rpgloot.item_count matches 4 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0f,0.5f,0.315f]},Tags:["rpgloot.forge_item","rpgloot.forge_4"],interpolation_duration:3,teleport_duration:2}

execute if score $global rpgloot.item_count matches 5 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0f,0.5f,0f]},Tags:["rpgloot.forge_item","rpgloot.forge_5"],interpolation_duration:3,teleport_duration:2}

execute if score $global rpgloot.item_count matches 6 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0f,0.5f,-0.315f]},Tags:["rpgloot.forge_item","rpgloot.forge_6"],interpolation_duration:3,teleport_duration:2}

execute if score $global rpgloot.item_count matches 7 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0.315f,0.5f,0.315f]},Tags:["rpgloot.forge_item","rpgloot.forge_7"],interpolation_duration:3,teleport_duration:2}

execute if score $global rpgloot.item_count matches 8 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0.315f,0.5f,0f]},Tags:["rpgloot.forge_item","rpgloot.forge_8"],interpolation_duration:3,teleport_duration:2}

execute if score $global rpgloot.item_count matches 9 run data merge entity @s {transformation:{left_rotation:[-1f,1f,1f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],translation:[0.315f,0.5f,-0.315f]},Tags:["rpgloot.forge_item","rpgloot.forge_9"],interpolation_duration:3,teleport_duration:2}

item replace entity @s contents from entity @p[tag=rpgloot.interact_forge] weapon.mainhand
execute at @s rotated as @n[type=minecraft:item_display,tag=rpgloot.forge] run tp @s ~ ~ ~ ~ ~
ride @s mount @n[type=minecraft:item_display,tag=rpgloot.forge]
playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2

item modify entity @p[tag=rpgloot.interact_forge] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}