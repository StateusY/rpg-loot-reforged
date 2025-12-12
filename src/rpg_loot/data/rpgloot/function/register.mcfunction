# <called from register.json>
function rpgloot:load
## Clear registries

# Clear attribute registry

data modify storage rpgc:registry part set value {}


# Register content
function rpgloot:reg/damage
function rpgloot:reg/parts
function rpgloot:reg/mobs