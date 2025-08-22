

## do other logic here before actualy dying
execute store result score .can_die rpgc.temp run function rpgc:z_api/event/call {event:death}

execute unless entity @s[type=player] run scoreboard players reset @s

kill @s