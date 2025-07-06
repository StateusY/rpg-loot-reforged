function rpgc:register_mob_with_properties {type:"minecraft:sheep",properties:{weight:1,hp:8,name:'{"text":"Sheep"}',events:[{type:"spawn",run:"function rpg_loot:mobs/variance/spawn"}]}}

function rpgc:register_mob_with_properties {type:"minecraft:cow",properties:{weight:100,hp:10,name:'{"text":"Cow"}',events:[{type:"spawn",run:"function rpg_loot:mobs/variance/spawn"}]}}
function rpgc:register_mob_with_properties {type:"minecraft:cow",properties:{weight:1,hp:10,name:'{"text":"Bertha"}',events:[{type:"spawn",run:"function rpg_loot:mobs/large_cow"}]}}

function rpgc:register_mob_with_properties {type:"minecraft:pig",properties:{weight:75,hp:10,name:'{"text":"Pig"}',events:[{type:"spawn",run:"function rpg_loot:mobs/variance/spawn"}]}}
function rpgc:register_mob_with_properties {type:"minecraft:pig",properties:{weight:1,hp:25,damage:[{type:'physical',amount:3}],type:"minecraft:hoglin",name:'{"text":"Boar"}',nbt:"{IsImmuneToZombification:1b,attributes:[{id:\"minecraft:attack_knockback\",base:2},{id:\"minecraft:scale\",base:1.25}]}"}}

function rpgc:register_mob_with_properties {type:"minecraft:blaze",properties:{weight:1,hp:25,damage:[{type:'fire',amount:8}],resistance:{"fire":100}}}
