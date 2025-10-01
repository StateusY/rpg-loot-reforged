tag @s add rpgloot.titanium_sprint
function rpgloot:items/basic/titanium/armor/particles/start
attribute @s step_height modifier add rpgloot:titanium 2 add_value
attribute @s movement_speed modifier add rpgloot:titanium 2 add_multiplied_total
attribute @s sneaking_speed modifier add rpgloot:titanium 1 add_value
function rpgc:z_api/attribute/modifier/add {source:titanium_sprint,id:dodge,name:"titanium_sprint",type:add,value:1}