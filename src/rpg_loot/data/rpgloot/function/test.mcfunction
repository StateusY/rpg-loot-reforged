summon marker ~ ~ ~ {Tags:["rpgloot.test"]}
rotate @n[type=marker,tag=rpgloot.test] ~ ~
rotate @s facing entity @n[type=husk] eyes
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",looking_at:{type:"#rpgc:all"}}}} run say looking
execute rotated as @n[type=marker,tag=rpgloot.test] run rotate @s ~ ~
kill @n[type=marker,tag=rpgloot.test]