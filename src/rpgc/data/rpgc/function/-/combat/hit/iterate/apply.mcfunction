#$tellraw @a "$(type):$(amount)"
execute store result score .damage rpgc.temp run data get storage rpgc:temp attacker.damage[0].amount 10
$execute store result score .damage rpgc.temp run function rpgc:-/player/attribute/get_dynamic {type:"dmg.$(type)",base_score:".damage rpgc.temp"}
execute store result score .damage rpgc.temp run function rpgc:-/player/attribute/get_dynamic {type:"dmg.all",base_score:".damage rpgc.temp"}
scoreboard players operation .damage rpgc.temp *= .crit rpgc.temp
scoreboard players operation .damage rpgc.temp /= #1000 constant
$data modify storage rpgc:temp damage.current set value {type:"$(type)"}
execute store result storage rpgc:temp damage.current.amount int 1 run scoreboard players get .damage rpgc.temp
data modify storage rpgc:temp damage.sent append from storage rpgc:temp damage.current

#tellraw @a {"score":{"objective":"rpgc.temp","name":".damage"}}
