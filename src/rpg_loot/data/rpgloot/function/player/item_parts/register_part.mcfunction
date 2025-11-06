data modify storage rpgloot:temp part.weight set value []
$data modify storage rpgloot:temp part.weight set value $(weight)

$data modify storage rpgloot:temp part.built set value {type:"$(type)",rarity:common,weight:null,name:"$(name)",properties:$(properties)}
data modify storage rpgloot:temp part.built.weight set from storage rpgloot:temp part.weight[0]
function rpgloot:player/item_parts/register_rarities with storage rpgloot:temp part.built

data modify storage rpgloot:temp part.built.rarity set value uncommon
data modify storage rpgloot:temp part.built.weight set from storage rpgloot:temp part.weight[1]
function rpgloot:player/item_parts/register_rarities with storage rpgloot:temp part.built

data modify storage rpgloot:temp part.built.rarity set value rare
data modify storage rpgloot:temp part.built.weight set from storage rpgloot:temp part.weight[2]
function rpgloot:player/item_parts/register_rarities with storage rpgloot:temp part.built

data modify storage rpgloot:temp part.built.rarity set value epic
data modify storage rpgloot:temp part.built.weight set from storage rpgloot:temp part.weight[3]
function rpgloot:player/item_parts/register_rarities with storage rpgloot:temp part.built

data modify storage rpgloot:temp part.built.rarity set value legendary
data modify storage rpgloot:temp part.built.weight set from storage rpgloot:temp part.weight[4]
function rpgloot:player/item_parts/register_rarities with storage rpgloot:temp part.built

data modify storage rpgloot:temp part.built.rarity set value mythic
data modify storage rpgloot:temp part.built.weight set from storage rpgloot:temp part.weight[5]
function rpgloot:player/item_parts/register_rarities with storage rpgloot:temp part.built
data remove storage rpgloot:temp part