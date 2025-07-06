$execute unless data storage rpgc:registry mob."$(type)" run data modify storage rpgc:registry mob."$(type)" set value []
$data modify storage rpgc:registry mob."$(type)" append value $(properties)
data remove storage rpgc:registry builder
