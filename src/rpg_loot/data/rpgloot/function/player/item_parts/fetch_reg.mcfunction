scoreboard players reset .dupe

$function rpgc:z_core/registry/list/get {registry:"part",entry:"$(rpgloot_tier)_$(rpgloot_type)"}

data modify storage rpgloot:temp dupe.name set from storage rpgc:registry temp.result.name
data modify storage rpgloot:temp dupe.slot set from storage rpgloot:temp parts.item.Slot

execute store result score .dupe rpgloot.temp run function rpgloot:player/item_parts/check_dupe with storage rpgloot:temp dupe
execute if score .dupe rpgloot.temp matches 1 run say dupe
execute if score .dupe rpgloot.temp matches 1 run return run function rpgloot:player/item_parts/fetch_reg with storage rpgloot:temp parts.item.components.minecraft:custom_data

data modify storage rpgloot:temp parts.modifiers set from storage rpgc:registry temp.result.properties.modifiers
data modify storage rpgloot:temp parts.modifiers[0].name set from storage rpgc:registry temp.result.name
execute if data storage rpgloot:temp parts.modifiers[0].id run function rpgloot:player/item_parts/modifiers with storage rpgloot:temp parts.modifiers[0]

function rpgloot:player/item_parts/attributes
function rpgloot:player/item_parts/events

data modify storage rpgloot:temp parts.item.components.minecraft:custom_data.rpgloot_parts append from storage rpgc:registry temp.result.name

#translate
function rpgloot:player/item_parts/translate with storage rpgc:registry temp.result

#data modify storage rpgloot:temp parts.item.components.minecraft:custom_name.extra insert 1 from storage rpgc:registry temp.result.name
data modify storage rpgloot:temp parts.item.components.minecraft:custom_name.extra insert 1 value " "
data modify storage rpgloot:temp parts.item.components.minecraft:custom_data.rpgloot_modified set value true
say should modify
function rpgloot:player/item_parts/modify_item with storage rpgloot:temp parts.item