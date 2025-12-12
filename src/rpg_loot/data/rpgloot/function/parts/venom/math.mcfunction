$data modify storage bs:in math.pow set value {x:$(dmg),y:0.2}
function #bs.math:pow
#tellraw @a [{"nbt": "math.pow", "storage": "bs:out", "color": "gold"}]
execute store result storage rpgloot:temp venom.percent double 0.001 run data get storage bs:out math.pow 25
#tellraw @a [{"nbt": "venom.percent", "storage": "rpgloot:temp", "color": "green"}]
execute as @e[type=#rpgc:all,tag=rpgc.current_victim] run function rpgloot:parts/venom/apply with storage rpgloot:temp venom
