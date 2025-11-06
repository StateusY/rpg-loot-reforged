#> from: rpgc:z_core/mob/sort
data remove storage rpgc:registry temp
$function rpgc:z_api/info {message:"Fetching registry of mob $(type)"}
$function rpgc:z_core/registry/list/get {registry:"mob",entry:"$(type)"}
