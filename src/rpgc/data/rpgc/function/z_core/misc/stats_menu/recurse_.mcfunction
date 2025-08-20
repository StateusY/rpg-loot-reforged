$data modify storage rpgc:temp dialog merge from storage rpgc:registry damage[{type:"$(type)"}]
$execute store result storage rpgc:temp dialog.type_dmg double 0.01 run function rpgc:z_api/attribute/get {id:$(type)_dmg}
$execute store result storage rpgc:temp dialog.type_res double 1 run function rpgc:z_api/attribute/get {id:$(type)_res}
function rpgc:z_core/misc/stats_menu/build_dmg with storage rpgc:temp dialog
data remove storage rpgc:temp stats.damages[0]
execute if data storage rpgc:temp stats.damages[0] run function rpgc:z_core/misc/stats_menu/recurse_ with storage rpgc:temp stats.damages[0]