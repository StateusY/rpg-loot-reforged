execute unless data storage rpgloot:temp modify.events[{type:"click"}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"!minecraft:consumable":{}}}

$item modify entity @s weapon.mainhand [{"function":"minecraft:set_name","entity":"this","target":"item_name","name":$(name)},\
    {"function":"minecraft:set_components","components":{"minecraft:item_model":"$(model)"}},\
    {"function":"minecraft:set_item","components":{"minecraft:hide_additional_tooltip":{}},"item":"$(item)"},\
    {"function":"minecraft:set_components","components":{"minecraft:custom_data":{damage:$(damage),attributes:$(attributes),events:$(events),bow:$(bow)}}},\
    {"function":"minecraft:set_lore","entity":"this","lore":$(lore),"mode":"replace_all"}]

execute if data storage rpgloot:temp modify.damage[0] run function rpg_loot:discover/lore/damage with storage rpgloot:temp modify.damage[0]

data modify storage rpgloot:temp modify.vanilla_attributes set from entity @s SelectedItem.components."minecraft:attribute_modifiers".modifiers
execute if data storage rpgloot:temp modify.vanilla_attributes[0] run function rpg_loot:discover/lore/attributes/vanilla
data modify storage rpgloot:temp modify.split set value {mul:[],add:[]}

data modify storage rpgloot:temp modify.split.mul append from storage rpgloot:temp modify.attributes[{operation:"mul"}]
execute if data storage rpgloot:temp modify.split.mul[0] run function rpg_loot:discover/lore/attributes/mul with storage rpgloot:temp modify.split.mul[0]

data modify storage rpgloot:temp modify.split.add append from storage rpgloot:temp modify.attributes[{operation:"add"}]
execute if data storage rpgloot:temp modify.split.add[0] run function rpg_loot:discover/lore/attributes/add with storage rpgloot:temp modify.split.add[0]
