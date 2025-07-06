function rpgc:-/mob/display/bar_calculate
execute if entity @s[type=!#rpgc:tp] on passengers run return run function rpgc:-/mob/display/bar_text

function rpgc:-/mob/display/select {type:"text_display",tag:"rpgc.hp_display",command:"function rpgc:-/mob/display/bar_text"}
