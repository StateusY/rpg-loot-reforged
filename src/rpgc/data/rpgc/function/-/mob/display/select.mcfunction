$data modify storage rpgc:temp select.type set value "$(type)"
$data modify storage rpgc:temp select.tag set value "$(tag)"
$data modify storage rpgc:temp select.command set value "$(command)"
execute store result storage rpgc:temp select.id int 1 run scoreboard players get @s rpgc.id2

function rpgc:-/mob/display/select_ with storage rpgc:temp select
