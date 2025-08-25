scoreboard players reset @s player_left_game
function rpgc:z_api/info {message:"player joined game"}
function rpgc:z_core/player/updates/config with storage rpgc:config
function rpgc:z_api/event/call {event:"head_swap"}
function rpgc:z_api/event/call {event:"chest_swap"}
function rpgc:z_api/event/call {event:"legs_swap"}
function rpgc:z_api/event/call {event:"feet_swap"}
function rpgc:z_api/event/call {event:"swap_off"}