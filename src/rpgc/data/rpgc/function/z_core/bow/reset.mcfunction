function rpgc:z_api/attribute/modifier/remove_by_source {source:bow}
scoreboard players reset @s rpgc.shot_arrow
scoreboard players reset @s rpgc.drawing
scoreboard players reset @s rpgc.draw_percent
scoreboard players reset .current_id
title @s actionbar ""
data remove storage rpgc:temp bow