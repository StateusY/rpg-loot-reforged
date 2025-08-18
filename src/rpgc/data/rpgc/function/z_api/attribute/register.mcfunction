$execute if data storage rpgc:registry attribute.$(id) run return run function rpgc:z_api/error {message:"Tried to register two attributes with the id $(id)!"}
$data modify storage rpgc:registry attribute.$(id) set value {base:$(base),icon:"$(icon)",color:"$(color)",on_update:"$(on_update)"}

$function rpgc:z_api/info {message:"Registered attribute $(id) with base $(base)"}

