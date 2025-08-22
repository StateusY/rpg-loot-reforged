#> from: rpgc:z_core/mob/spawning/spawn, rpgc:z_core/mob/spawning/sort, rpgc:z_core/mob/properties/type

tag @s add rpgc
tag @s add rpgc.current
effect give @s resistance infinite 255 true


execute if data storage rpgc:temp properties.type positioned ~ ~ ~ run return run function rpgc:z_core/mob/properties/type with storage rpgc:temp properties
execute if data storage rpgc:temp properties.tag run function rpgc:z_core/mob/properties/tag with storage rpgc:temp properties
execute if data storage rpgc:temp properties.mount run function rpgc:z_core/mob/properties/mount with storage rpgc:temp properties.mount
#function rpgc:-/mob/properties/id


execute if data storage rpgc:temp properties.attributes run function rpgc:z_core/mob/properties/attributes

execute if data storage rpgc:temp properties.hp run function rpgc:z_core/mob/properties/hp with storage rpgc:temp properties

execute if data storage rpgc:temp properties.name run function rpgc:z_core/mob/properties/name with storage rpgc:temp properties
execute if data storage rpgc:temp properties.bar_size run function rpgc:z_core/mob/properties/bar with storage rpgc:temp properties

function rpgc:z_core/mob/properties/item
execute if data storage rpgc:temp properties.cd run function rpgc:z_core/mob/properties/cd with storage rpgc:temp properties
execute if data storage rpgc:temp properties.nbt run function rpgc:z_core/mob/properties/nbt with storage rpgc:temp properties


#execute if data storage rpgc:temp properties.events run function rpgc:-/mob/properties/events with storage rpgc:temp properties


function rpgc:z_core/mob/properties/misc/info with storage rpgc:temp

tag @s remove rpgc.current
data remove storage rpgc:temp properties
