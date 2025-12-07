$data modify storage bs:in math.pow set value {x:$(dmg),y:0.2}
function #bs.math:pow
tellraw @a [{"nbt": "math.pow", "storage": "bs:out", "color": "gold"}]
execute store result storage rpgloot:temp venom.percent double 0.001 run data get storage bs:out math.pow 25
tellraw @a [{"nbt": "venom.percent", "storage": "rpgloot:temp", "color": "green"}]

data remove storage rpgloot:temp venom