# <called from register.json>

## Clear registries

# Clear attribute registry
data modify storage rpgc:registry attribute set value {}
data modify storage rpgc:tags attribute set value {}

# Clear damage registry
data remove storage rpgc:registry damage

data remove storage rpgc:registry builder
data modify storage rpgc:registry mob set value {}

data modify storage rpgc:registry modifier set value {}


# Register content
function rpgc:z_api/defaults/attributes
function rpgc:z_api/defaults/damages
function rpgc:z_api/defaults/mobs
#function #rpgc:register

#function rpgc:-/mob/default/register
execute if data storage rpgc:registry builder run function rpgc:z_core/mob/reg/finalize_register with storage rpgc:registry builder

