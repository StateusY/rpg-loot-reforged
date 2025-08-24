particle dust{color:[0.459,0.271,0.106],scale:0.25} ~ ~ ~ 0 0 0 0 0 normal
scoreboard players add .cast rpgloot.temp 1
execute if score .cast rpgloot.temp matches ..150 if block ~ ~ ~ #air unless function rpgloot:items/basic/wood/bow/detect_entity positioned ^ ^ ^.025 run return run function rpgloot:items/basic/wood/bow/splinter
execute unless score .cast rpgloot.temp matches 150.. if block ~ ~ ~ #air as @n[type=#rpgc:all,dx=0,dy=0,dz=0] positioned ~-.99 ~-.99 ~-.99 if entity @s[type=#rpgc:all,dx=0,dy=0,dz=0] run return run function rpgloot:items/basic/wood/bow/apply_splinter
