
$data merge entity @s {CustomName:["","",{text:"",color:"#01fe00",extra:[$(name)]}," ",$(name)],CustomNameVisible:1b}
data remove entity @s CustomName.extra[1].extra[{}].color
function rpgc:z_core/mob/display/hp_change

