function rpgc:z_api/event/call {event:swap_off}
execute if predicate rpgc:unarmed run function rpgc:z_core/player/equipment/unarmed
execute unless predicate rpgc:unarmed run function rpgc:z_core/player/equipment/armed

scoreboard players reset @s rpgc.drawing
scoreboard players reset @s rpgc.draw_percent
scoreboard players reset @s rpgc.queue_swap
function rpgc:z_core/player/updates/mainhand