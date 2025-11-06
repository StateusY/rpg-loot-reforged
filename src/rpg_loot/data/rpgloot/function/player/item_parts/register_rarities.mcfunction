
$execute unless data storage rpgc:registry part."$(rarity)_$(type)" run data modify storage rpgc:registry part."$(rarity)_$(type)" set value []
$data modify storage rpgc:registry part."$(rarity)_$(type)" append value {name:"$(name)",weight:$(weight),properties:$(properties),predicate:"[]"}