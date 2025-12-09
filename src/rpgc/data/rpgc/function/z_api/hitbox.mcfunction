#function rpgc:z_api/hitbox {x:1,y:1,selector:"@e",cmd:"say ow"}
$data modify storage rpgc:temp hitbox.selector set value "$(selector)"
$data modify storage rpgc:temp hitbox.cmd set value "$(cmd)"

$data modify storage rpgc:temp hitbox.x set value $(x)
$data modify storage rpgc:temp hitbox.y set value $(y)
execute store result storage rpgc:temp hitbox.xoffset double -0.005 run data get storage rpgc:temp hitbox.x 100
execute store result storage rpgc:temp hitbox.yoffset double -0.005 run data get storage rpgc:temp hitbox.y 100
function rpgc:z_core/hitbox/offset with storage rpgc:temp hitbox
#data remove storage rpgc:temp hitbox