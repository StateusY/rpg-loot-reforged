
$data modify storage bs:in math.pow set value {x:$(armor),y:0.7485}
function #bs.math:pow
#tellraw @a [{"nbt": "math.pow", "storage": "bs:out", "color": "gold"}]