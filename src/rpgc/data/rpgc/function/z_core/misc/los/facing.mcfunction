$rotate @s facing entity $(selector) feet
$effect give $(selector) unluck 5 123 false
$execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",looking_at:{type:"#rpgc:all",effects:{"minecraft:unluck":{amplifier:123}}}}}} run $(cmd)
$effect clear $(selector) unluck