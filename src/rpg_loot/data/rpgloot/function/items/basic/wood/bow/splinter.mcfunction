particle dust{color:[0.459,0.271,0.106],scale:0.35} ~ ~ ~ 0 0 0 0 0 normal
scoreboard players add .cast rpgloot.temp 1
execute if score .cast rpgloot.temp matches ..35 if block ~ ~ ~ #bs.hitbox:can_pass_through unless function rpgloot:items/basic/wood/bow/detect_entity positioned ^ ^ ^.1 run return run function rpgloot:items/basic/wood/bow/splinter
execute unless score .cast rpgloot.temp matches 35.. if block ~ ~ ~ #bs.hitbox:can_pass_through as @n[type=#rpgc:all,dx=0,dy=0,dz=0] positioned ~-.99 ~-.99 ~-.99 if entity @s[type=#rpgc:all,dx=0,dy=0,dz=0] run return run function rpgloot:items/basic/wood/apply_splinter
