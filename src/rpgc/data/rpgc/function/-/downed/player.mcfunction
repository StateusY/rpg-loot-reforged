spectate
title @s actionbar ["Hold ",{"keybind":"key.sneak"}," To Give Up"]
execute if entity @a[distance=..3,predicate=rpgc:sneaking,predicate=rpgc:ground] run return run function rpgc:-/downed/revive
tag @s remove rpgc.reviving