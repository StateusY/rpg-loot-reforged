# Global parts
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,75,50,25,10,5],name:"Charmed",properties:{events:[],modifiers:[{id:"minecraft:luck",value:10,type:"add_value"}],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[25,50,75,50,25,10],name:"Lucky",properties:{events:[],modifiers:[{id:"minecraft:luck",value:25,type:"add_value"}],attributes:[{id:crit_chance,name:lucky,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[5,15,25,75,75,50],name:"Glimmering",properties:{events:[],modifiers:[{id:"minecraft:luck",value:50,type:"add_value"}],attributes:[]}}

function rpgloot:player/item_parts/register_part {type:"bow",weight:[50,75,50,25,10,5],name:"Charmed",properties:{events:[],modifiers:[{id:"minecraft:luck",value:10,type:"add_value"}],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"bow",weight:[25,50,75,50,25,10],name:"Lucky",properties:{events:[],modifiers:[{id:"minecraft:luck",value:25,type:"add_value"}],attributes:[{id:crit_chance,name:lucky,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"bow",weight:[5,15,25,75,75,50],name:"Glimmering",properties:{events:[],modifiers:[{id:"minecraft:luck",value:50,type:"add_value"}],attributes:[]}}

function rpgloot:player/item_parts/register_part {type:"armor",weight:[50,75,50,25,10,5],name:"Charmed",properties:{events:[],modifiers:[{id:"minecraft:luck",value:2.5,type:"add_value"}],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"armor",weight:[25,50,75,50,25,10],name:"Lucky",properties:{events:[],modifiers:[{id:"minecraft:luck",value:6.25,type:"add_value"}],attributes:[{id:crit_chance,name:lucky,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"armor",weight:[5,15,25,75,75,50],name:"Glimmering",properties:{events:[],modifiers:[{id:"minecraft:luck",value:12.5,type:"add_value"}],attributes:[]}}

function rpgloot:player/item_parts/register_part {type:"tool",weight:[50,75,50,25,10,5],name:"Charmed",properties:{events:[],modifiers:[{id:"minecraft:luck",value:10,type:"add_value"}],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"tool",weight:[25,50,75,50,25,10],name:"Lucky",properties:{events:[],modifiers:[{id:"minecraft:luck",value:25,type:"add_value"}],attributes:[{id:crit_chance,name:lucky,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"tool",weight:[5,15,25,75,75,50],name:"Glimmering",properties:{events:[],modifiers:[{id:"minecraft:luck",value:50,type:"add_value"}],attributes:[]}}

# sword stuffs

# common 
function rpgloot:player/item_parts/register_part {type:"sword",weight:[100,75,50,25,5,0],name:"Sharp",properties:{events:[],modifiers:[],attributes:[{id:physical_dmg,name:sharp,source:modifier,type:mul,value:.05}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[100,75,50,25,5,0],name:"Balanced",properties:{events:[],modifiers:[{id:"minecraft:attack_speed",value:.05,type:"add_multiplied_total"}],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[100,75,50,25,5,0],name:"Steady",properties:{events:[],modifiers:[],attributes:[{id:crit_chance,name:steady,source:modifier,type:add,value:.05}]}}

# uncommon
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,100,75,50,25,15],name:"Heavy",properties:{events:[],modifiers:[{id:"minecraft:attack_speed",value:-.10,type:"add_multiplied_total"}],attributes:[{id:physical_dmg,name:heavy,source:modifier,type:mul,value:.15}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,100,75,50,25,15],name:"Swift",properties:{events:[],modifiers:[{id:"minecraft:attack_speed",value:.10,type:"add_multiplied_total"}],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,100,75,50,25,15],name:"Keen",properties:{events:[],modifiers:[],attributes:[{id:crit_chance,name:keen,source:modifier,type:add,value:.1},{id:crit_dmg,name:keen,source:modifier,type:add,value:.1}]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[50,100,75,50,25,15],name:"Lengthy",properties:{events:[],modifiers:[{id:"minecraft:entity_interaction_range",value:1,type:"add_value"}],attributes:[]}}

# rare
function rpgloot:player/item_parts/register_part {type:"sword",weight:[25,50,100,75,50,25],name:"Blunt",properties:{events:[{"name":"blunt","source": "part", "listen": "hit", "command": "function rpgloot:parts/blunt/hit"}],modifiers:[],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[25,50,100,75,50,25],name:"Vigorous",properties:{events:[],modifiers:[],attributes:[{id:dmg_mult,name:vigorous,source:modifier,type:mul,value:.15}]}}

#epic 
function rpgloot:player/item_parts/register_part {type:"sword",weight:[10,25,50,100,75,50],name:"Venomous",properties:{events:[{"name":"venom","source": "part", "listen": "hit", "command": "function rpgloot:parts/venom/hit"}],modifiers:[],attributes:[]}}


function rpgloot:player/item_parts/register_part {type:"sword",weight:[5,15,25,50,100,75],name:"Cleaving",properties:{events:[{"name":"cleaving","source": "part", "listen": "hit", "command": "function rpgloot:parts/cleaving/hit"}],modifiers:[],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[10,25,50,100,75,50],name:"Infernal",properties:{events:[{"name":"infernal","source": "part", "listen": "hit", "command": "function rpgloot:parts/infernal/hit"}],modifiers:[],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"sword",weight:[1,5,15,25,75,50],name:"Vampiric",properties:{events:[{"name":"vampiric","source": "part", "listen": "hit", "command": "function rpgloot:parts/vampiric/hit"}],modifiers:[],attributes:[]}}
# bow stuff
function rpgloot:player/item_parts/register_part {type:"bow",weight:[1,5,15,25,175,50],name:"Anvilish",properties:{events:[{"name":"anvilish","source": "part", "listen": "bow_hit", "command": "function rpgloot:parts/anvilish/hit"}],modifiers:[],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"bow",weight:[1,5,15,25,75,50],name:"Transmogratory",properties:{events:[{"name":"transmogratory","source": "part", "listen": "hit", "command": "function rpgloot:parts/transmogratory/hit"}],modifiers:[],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"bow",weight:[1,5,15,25,75,50],name:"Warping",properties:{events:[{"name":"warping","source": "part", "listen": "hit", "command": "function rpgloot:parts/warping/hit"}],modifiers:[],attributes:[]}}
# armor stuff
function rpgloot:player/item_parts/register_part {type:"armor",weight:[1,5,15,25,75,50],name:"Durable",properties:{events:[{"name":"durable","source": "part", "listen": "hit", "command": "function rpgloot:parts/durable/hit"}],modifiers:[],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"armor",weight:[1,5,15,25,75,50],name:"Fleeting",properties:{events:[{"name":"fleeting","source": "part", "listen": "hit", "command": "function rpgloot:parts/fleeting/hit"}],modifiers:[],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"armor",weight:[1,5,15,25,75,50],name:"Quickened",properties:{events:[{"name":"quickened","source": "part", "listen": "hit", "command": "function rpgloot:parts/quickened/hit"}],modifiers:[],attributes:[]}}
function rpgloot:player/item_parts/register_part {type:"armor",weight:[1,5,15,25,75,50],name:"Vengeful",properties:{events:[{"name":"vengeful","source": "part", "listen": "hit", "command": "function rpgloot:parts/vengeful/hit"}],modifiers:[],attributes:[]}}
