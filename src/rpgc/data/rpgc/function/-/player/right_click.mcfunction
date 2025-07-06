advancement revoke @s only rpgc:right_click
execute if score @s rpgc.click_cd matches 1.. run return fail
function rpgc:-/player/storage/get with entity @s
function rpgc:-/event/call {type:"click",source:"storage rpgc:data current"}