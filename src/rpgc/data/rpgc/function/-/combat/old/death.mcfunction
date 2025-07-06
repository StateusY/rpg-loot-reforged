
execute as @p[tag=rpgc.current_attacker] run function rpgc:-/player/event/call {type:'kill'}
execute as @p[tag=rpgc.current_attacker] at @s run function rpgc:-/player/event/call {type:'elim'}
# If the entity is a player and not already downed, run the downed function.
execute if entity @s[type=player,tag=!rpgc.downed] run return run function rpgc:-/downed/downed

# Reset scores and kill the entity if it's not a player
execute if data entity @s HandItems[0].components."minecraft:custom_data".events run function rpgc:-/player/event/call {type:"death"}
execute if entity @s[tag=rpgc.dont_die] run return fail

execute if entity @s[type=#rpgc:tp] run function rpgc:-/mob/display/select {type:"text_display",tag:"rpgc.hp_display",command:"function rpgc:-/mob/display/die"}
execute unless entity @s[type=#rpgc:tp] on passengers if entity @s[type=text_display] run function rpgc:-/mob/display/die

scoreboard players reset @s
kill @s
