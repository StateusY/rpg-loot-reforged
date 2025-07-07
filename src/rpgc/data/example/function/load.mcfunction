
function rpgc:register_mob_with_properties {type:"minecraft:skeleton",properties:{weight:2,cd:200,hp:10,name:'{"color":"dark_blue","text":"sir blah blah \\\\n fi fai pho fum i have a big thumb"}',type:"wither_skeleton",tag:"dave",damage:[{type:'physical',amount:5}],modifiers:[{chance:100,set:"gay"}]}}

function rpgc:register_mob_with_properties {type:"minecraft:husk",properties:{cd:20,weight:2,hp:10000,name:'{"color":"dark_blue","text":"im fat"}',damage:[{type:'physical',amount:10}],modifiers:[{chance:100,set:["common","rare","gay"]},{chance:50,set:["mythic","super gay"]}]}}

function rpgc:register_mob_with_properties {type:"minecraft:iron_golem",properties:{cd:20,weight:1,hp:50,armor:25,name:'Chonk',damage:[{type:'physical',amount:5}]}}

#function rpgc:register_mob_with_properties {type:"minecraft:spider",properties:{weight:1,hp:20,cd:20,name:'{"text":"Spooder"}',damage:[{type:'physical',amount:1}],events:[{type:"death",run:"function example:spooderlings"}]}}

function rpgc:register_mob_with_properties {type:"minecraft:silverfish",properties:{weight:1,hp:1,cd:20,name:'{"text":"Mine Turtle"}',damage:[{type:'physical',amount:0}],events:[{type:"hit",run:"summon tnt"}]}}



function rpgc:register_modifier {set:"gay",weight:1,predicate:'[]',stats:[{add:{hp:1}},{mul:{dmg:5}}],commands:{tick:"rpgc:-/whatever",load:"minecraft:nya"}}


#function rpgc:register_mob_with_properties {type:"minecraft:spider",properties:{weight:0,hp:1,cd:5,events:[{type:"death",run:"summon tnt"}],damage:[{type:'physical',amount:.1}],name:'{"text":"Spooderling"}',tag:"rpgc.spooderling",nbt:'{CustomNameVisible:0b,attributes:[{id:"minecraft:scale",base:0.25}]}'}}

#function rpgc:register_mob_with_properties {type:"minecraft:zombie",properties:{weight:2,hp:10,cd:40,name:'{"text":"Hordling"}',damage:[{type:'physical',amount:2}],events:[{type:"spawn",run:'summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{tag:"rpgc.hordling"},"minecraft:enchantments":{levels:{"rpgc:summon":1}}}},{}]}'},{type:"spawn",run:'summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{tag:"rpgc.hordling"},"minecraft:enchantments":{levels:{"rpgc:summon":1}}}},{}]}'},{type:"spawn",run:'summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{tag:"rpgc.hordling"},"minecraft:enchantments":{levels:{"rpgc:summon":1}}}},{}]}'},{type:"spawn",run:'summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{tag:"rpgc.hordling"},"minecraft:enchantments":{levels:{"rpgc:summon":1}}}},{}]}'},{type:"spawn",run:'summon zombie ~ ~ ~ {HandItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{tag:"rpgc.hordling"},"minecraft:enchantments":{levels:{"rpgc:summon":1}}}},{}]}'}]}}

#function rpgc:register_mob_with_properties {type:"minecraft:zombie",properties:{weight:0,hp:10,cd:40,tag:'rpgc.hordling',name:'{"text":"Hordling"}',damage:[{type:'physical',amount:2}]}}
