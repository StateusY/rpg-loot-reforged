$execute if data storage rpgc:registry attribute.$(id) run return run function rpgc:z_api/error {message:"Tried to register two attributes with the id $(id)!"}
$data modify storage rpgc:registry attribute.$(id) set value {base:$(base),icon:"$(icon)",color:"$(color)",on_update:"$(on_update)",tags:$(tags)}
$data modify storage rpgc:temp tags set value $(tags)
data modify storage rpgc:temp tags append value ".all"
$function rpgc:z_core/attribute/add_to_tags {id:"$(id)"}
data remove storage rpgc:temp tag
data remove storage rpgc:temp tags

$function rpgc:z_api/info {message:'Registered attribute $(id) with base $(base) in tags $(tags)'}

