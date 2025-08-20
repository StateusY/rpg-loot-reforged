execute unless data storage rpgc:temp tags[0] run return fail
$data modify storage rpgc:temp tag set value {id:"$(id)"}
data modify storage rpgc:temp tag.tag set from storage rpgc:temp tags[0]
function rpgc:z_core/attribute/add_to_tag with storage rpgc:temp tag

