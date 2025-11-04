#execute positioned ^ ^ ^-2 run particle electric_spark ~ ~ ~ 0.1 .1 .1 0 25 force

execute on passengers run function rpgloot:items/ember/projectile/ring_random
execute if score @s rpgloot.ember_charge matches 10..149 positioned as @s if block ~ ~ ~ #rpgloot:can_pass_through run tp @s ^ ^ ^.5
execute if score @s rpgloot.ember_charge matches 25..149 positioned as @s if block ~ ~ ~ #rpgloot:can_pass_through run tp @s ^ ^ ^.5
execute if score @s rpgloot.ember_charge matches 50..149 positioned as @s if block ~ ~ ~ #rpgloot:can_pass_through run tp @s ^ ^ ^.5
execute if score @s rpgloot.ember_charge matches 75..149 positioned as @s if block ~ ~ ~ #rpgloot:can_pass_through run tp @s ^ ^ ^.5
execute if score @s rpgloot.ember_charge matches 100.. positioned as @s if block ~ ~ ~ #rpgloot:can_pass_through run tp @s ^ ^ ^.5


scoreboard players add @s rpgloot.ember_gravity 1

execute store result storage rpgloot:temp ember.gravity double -0.025 run scoreboard players get @s rpgloot.ember_gravity
execute store result storage rpgloot:temp ember.offset double 0.05 run scoreboard players get @s rpgloot.ember_gravity
function rpgloot:items/ember/projectile/gravity with storage rpgloot:temp ember

#function rpgloot:items/ember/projectile/trail with storage rpgloot:temp ember

execute unless block ~ ~ ~ #rpgloot:can_pass_through run function rpgloot:items/ember/projectile/perish

scoreboard players add @s rpgloot.ember_dur 1
execute unless score @s rpgloot.ember_dur matches 200.. run return fail
execute on passengers run kill @s
kill @s