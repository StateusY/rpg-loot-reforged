#called from mob/sort
tag @s add rpgc
tag @s add rpgc.current
effect give @s[type=!#rpgc:boss] resistance infinite 255 true


execute if data storage rpgc:temp properties.type positioned ~ ~ ~ run return run function rpgc:-/mob/properties/type with storage rpgc:temp properties
execute if data storage rpgc:temp properties.tag run function rpgc:-/mob/properties/tag with storage rpgc:temp properties
execute if data storage rpgc:temp properties.mount run function rpgc:-/mob/properties/mount with storage rpgc:temp properties.mount
#function rpgc:-/mob/properties/id
execute if data storage rpgc:temp properties.hp run function rpgc:-/mob/properties/hp
execute if data storage rpgc:temp properties.armor run function rpgc:-/mob/properties/armor with storage rpgc:temp properties
execute if data storage rpgc:temp properties.name run function rpgc:-/mob/properties/name with storage rpgc:temp properties
function rpgc:-/mob/properties/item
execute if data storage rpgc:temp properties.cd run function rpgc:-/mob/properties/cd with storage rpgc:temp properties
execute if data storage rpgc:temp properties.nbt run function rpgc:-/mob/properties/nbt with storage rpgc:temp properties
execute if data storage rpgc:temp properties.resistance run function rpgc:-/mob/properties/resistance with storage rpgc:temp properties

execute if data storage rpgc:temp properties.events run function rpgc:-/mob/properties/events with storage rpgc:temp properties

execute if entity @s[type=#rpgc:tp] run function rpgc:-/mob/properties/tp

function rpgc:-/mob/display/bar

function rpgc:-/event/call {type:"spawn",source:"entity @s HandItems[0].components.minecraft:custom_data"}

tag @s remove rpgc.current
data remove storage rpgc:temp properties
