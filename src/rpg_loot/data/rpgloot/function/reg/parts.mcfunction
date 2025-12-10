# this is the registry for all parts/modifiers that swords, bows, armor, and tools can have

# all commented out lines are unimplemented


# SWORD stuffs
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,75,50,25,10,5],name:"charmed",properties:{modifiers:[{id:"minecraft:luck",value:10,type:"add_value"}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[25,50,75,50,25,10],name:"lucky",properties:{modifiers:[{id:"minecraft:luck",value:25,type:"add_value"}],attributes:[{id:crit_chance,name:lucky,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[5,15,25,75,75,50],name:"glimmering",properties:{modifiers:[{id:"minecraft:luck",value:50,type:"add_value"}]}}
# common 
function rpgloot:player/item_parts/register_part {type:"sword",weight:[100,75,50,25,5,0],name:"sharp",properties:{attributes:[{id:physical_dmg,name:sharp,source:modifier,type:mul,value:.05}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[100,75,50,25,5,0],name:"balanced",properties:{modifiers:[{id:"minecraft:attack_speed",value:.05,type:"add_multiplied_total"}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[100,75,50,25,5,0],name:"steady",properties:{attributes:[{id:crit_chance,name:steady,source:modifier,type:add,value:.05}]}}
# uncommon
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,100,75,50,25,15],name:"heavy",properties:{modifiers:[{id:"minecraft:attack_speed",value:-.10,type:"add_multiplied_total"}],attributes:[{id:physical_dmg,name:heavy,source:modifier,type:mul,value:.15}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,100,75,50,25,15],name:"swift",properties:{modifiers:[{id:"minecraft:attack_speed",value:.10,type:"add_multiplied_total"}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,100,75,50,25,15],name:"keen",properties:{attributes:[{id:crit_chance,name:keen,source:modifier,type:add,value:.1},{id:crit_dmg,name:keen,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,100,75,50,25,15],name:"lengthy",properties:{modifiers:[{id:"minecraft:entity_interaction_range",value:1,type:"add_value"}]}}
# rare
function rpgloot:player/item_parts/register_part {type:"sword",weight:[25,50,100,75,50,25],name:"blunt",properties:{events:[{"name":"blunt","source": "part", "listen": "hit", "command": "function rpgloot:parts/blunt/hit"}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[25,50,100,75,50,25],name:"vigorous",properties:{attributes:[{id:dmg_mult,name:vigorous,source:modifier,type:mul,value:.10}]}}
# epic 
function rpgloot:player/item_parts/register_part {type:"sword",weight:[10,25,50,100,75,50],name:"venomous",properties:{events:[{"name":"venom","source": "part", "listen": "hit", "command": "function rpgloot:parts/venom/hit"}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[10,25,50,100,75,50],name:"infernal",properties:{events:[{"name":"infernal","source": "part", "listen": "hit", "command": "function rpgloot:parts/infernal/hit"}]}}
# legendary
function rpgloot:player/item_parts/register_part {type:"sword",weight:[5,15,25,50,100,75],name:"cleaving",properties:{events:[{"name":"cleaving","source": "part", "listen": "hit", "command": "function rpgloot:parts/cleaving/hit"}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[1,5,15,25,75,50],name:"vampiric",properties:{events:[{"name":"vampiric","source": "part", "listen": "hit", "command": "function rpgloot:parts/vampiric/hit"}]}}
# mythic
function rpgloot:player/item_parts/register_part {type:"sword",weight:[0,0,0,0,0,25],name:"perfected",properties:{modifiers:[{id:"minecraft:luck",value:50,type:"add_value"},{id:dmg_mult,name:perfected,source:modifier,type:mul,value:.15},{id:crit_chance,name:perfected,source:modifier,type:add,value:.15},{id:"minecraft:attack_speed",value:.15,type:"add_multiplied_total"}]}}
# ----------------------------------------
# BOW stuff
function rpgloot:player/item_parts/register_part {type:"bow",weight:[50,75,50,25,10,5],name:"charmed",properties:{modifiers:[{id:"minecraft:luck",value:10,type:"add_value"}]}}
function rpgloot:player/item_parts/register_part {type:"bow",weight:[25,50,75,50,25,10],name:"lucky",properties:{modifiers:[{id:"minecraft:luck",value:25,type:"add_value"}],attributes:[{id:crit_chance,name:lucky,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"bow",weight:[5,15,25,75,75,50],name:"glimmering",properties:{modifiers:[{id:"minecraft:luck",value:50,type:"add_value"}]}}
# common
function rpgloot:player/item_parts/register_part {type:"bow",weight:[100,75,50,25,5,0],name:"rapid",properties:{modifiers:[{id:draw_speed,name:rapid,source:modifier,type:add,value:.1}]}}
# uncommon
function rpgloot:player/item_parts/register_part {type:"bow",weight:[50,100,75,50,25,15],name:"percise",properties:{modifiers:[{id:velocity,name:percise,source:modifier,type:add,value:.1},{id:crit_chance,name:percise,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"bow",weight:[50,100,75,50,25,15],name:"keen",properties:{modifiers:[{id:crit_chance,name:keen,source:modifier,type:add,value:.1},{id:crit_dmg,name:keen,source:modifier,type:add,value:.1}]}}
# rare
function rpgloot:player/item_parts/register_part {type:"bow",weight:[25,50,100,75,50,25],name:"anvilish",properties:{events:[{"name":"anvilish","source": "part", "listen": "bow_hit", "command": "function rpgloot:parts/anvilish/hit"}]}}
#function rpgloot:player/item_parts/register_part {type:"bow",weight:[25,50,100,75,50,25],name:"Split Shot",properties:{events:[{"name":"split_shot","source": "part", "listen": "bow_shot", "command": "function rpgloot:parts/split_shot/shot"}],modifiers:[{id:ranged_dmg,name:sharp,source:modifier,type:mul,value:-0.4}]}}
# epic
#function rpgloot:player/item_parts/register_part {type:"bow",weight:[1,5,15,25,75,50],name:"Transmogratory",properties:{events:[{"name":"transmogratory","source": "part", "listen": "hit", "command": "function rpgloot:parts/transmogratory/hit"}]}}
function rpgloot:player/item_parts/register_part {type:"bow",weight:[15,25,50,100,75,50],name:"warping",properties:{events:[{"name":"warping","source": "part", "listen": "hit", "command": "function rpgloot:parts/warping/hit"}]}}
# legendary
# mythic
function rpgloot:player/item_parts/register_part {type:"bow",weight:[0,0,0,0,0,25],name:"perfected",properties:{modifiers:[{id:"minecraft:luck",value:50,type:"add_value"},{id:dmg_mult,name:perfected,source:modifier,type:mul,value:.15},{id:draw_speed,name:perfected,source:modifier,type:add,value:.15},{id:velocity,name:perfected,source:modifier,type:add,value:.15}]}}
# ----------------------------------------
# ARMOR stuff
function rpgloot:player/item_parts/register_part {type:"armor",weight:[50,75,50,25,10,5],name:"charmed",properties:{modifiers:[{id:"minecraft:luck",value:2.5,type:"add_value"}]}}
function rpgloot:player/item_parts/register_part {type:"armor",weight:[25,50,75,50,25,10],name:"lucky",properties:{modifiers:[{id:"minecraft:luck",value:6.25,type:"add_value"}],attributes:[{id:crit_chance,name:lucky,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"armor",weight:[5,15,25,75,75,50],name:"glimmering",properties:{modifiers:[{id:"minecraft:luck",value:12.5,type:"add_value"}]}}
# common
function rpgloot:player/item_parts/register_part {type:"armor",weight:[100,75,50,25,5,0],name:"durable",properties:{modifiers:[{id:armor,name:durable,source:modifier,type:add,value:.05}]}}
# uncommon
function rpgloot:player/item_parts/register_part {type:"armor",weight:[50,100,75,50,25,15],name:"healthy",properties:{modifiers:[{id:max_hp,name:healthy,source:modifier,type:add,value:.05}]}}
function rpgloot:player/item_parts/register_part {type:"armor",weight:[50,100,75,50,25,15],name:"fleeting",properties:{modifiers:[{id:"minecraft:movement_speed",value:.075,type:"add_multiplied_total"}]}}
# rare
# epic
function rpgloot:player/item_parts/register_part {type:"armor",weight:[1,5,15,25,75,50],name:"quickened",properties:{modifiers:[{id:"minecraft:movement_speed",value:.15,type:"add_multiplied_total"},{id:"minecraft:step_height",value:.5,type:"add_value"}]}}
#function rpgloot:player/item_parts/register_part {type:"armor",weight:[1,5,15,25,75,50],name:"vengeful",properties:{events:[{"name":"vengeful","source": "part", "listen": "hurt", "command": "function rpgloot:parts/vengeful/hurt"}]}}
# legendary
#function rpgloot:player/item_parts/register_part {type:"armor",weight:[1,5,15,25,75,50],name:"graced",properties:{events:[{"name":"graced","source": "part", "listen": "tick", "command": "function rpgloot:parts/vengeful/tick"}]}}
# mythic
function rpgloot:player/item_parts/register_part {type:"bow",weight:[0,0,0,0,0,25],name:"perfected",properties:{modifiers:[{id:"minecraft:luck",value:50,type:"add_value"},{id:armor,name:perfected,source:modifier,type:mul,value:.1},{id:max_hp,name:perfected,source:modifier,type:add,value:.1},{id:"minecraft:movement_speed",value:.1,type:"add_multiplied_total"}]}}
# ----------------------------------------
# TOOL stuff
function rpgloot:player/item_parts/register_part {type:"tool",weight:[50,75,50,25,10,5],name:"charmed",properties:{modifiers:[{id:"minecraft:luck",value:10,type:"add_value"}]}}
function rpgloot:player/item_parts/register_part {type:"tool",weight:[25,50,75,50,25,10],name:"lucky",properties:{modifiers:[{id:"minecraft:luck",value:25,type:"add_value"}],attributes:[{id:crit_chance,name:lucky,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"tool",weight:[5,15,25,75,75,50],name:"glimmering",properties:{modifiers:[{id:"minecraft:luck",value:50,type:"add_value"}]}}
# common
# uncommon
# rare
# epic
# legendary
# mythic