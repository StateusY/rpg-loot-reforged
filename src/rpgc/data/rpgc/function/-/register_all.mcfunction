#called from load

data remove storage rpgc:registry builder
data modify storage rpgc:registry mob set value {}
function rpgc:-/damage/clear_loop
data modify storage rpgc:registry modifier set value {}


function #rpgc:register

#function rpgc:-/mob/default/register
execute if data storage rpgc:registry builder run function rpgc:-/mob/finalize_register with storage rpgc:registry builder
