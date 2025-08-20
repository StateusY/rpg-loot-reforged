function rpgc:z_api/attribute/modifier/remove {name:bow_draw}
function rpgc:z_api/attribute/modifier/remove {name:bow_draw_reduce}
scoreboard players reset @s rpgc.shot_arrow
scoreboard players reset @s rpgc.drawing
scoreboard players reset @s rpgc.draw_percent
title @s actionbar ""
data remove storage rpgc:temp bow