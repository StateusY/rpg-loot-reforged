data modify storage rpgloot:temp forge.occupied_slots set value []

function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":1}
function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":2}
function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":3}
function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":4}
function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":5}
function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":6}
function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":7}
function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":8}
function rpgloot:blocks/forge/item/place_in_slot_macro {"slot":9}

item replace entity @s contents from entity @p[tag=rpgloot.interact_forge] weapon.mainhand
execute at @s rotated as @n[type=minecraft:item_display,tag=rpgloot.forge] run tp @s ~ ~ ~ ~ ~
ride @s mount @n[type=minecraft:item_display,tag=rpgloot.forge]
playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2

item modify entity @p[tag=rpgloot.interact_forge] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}