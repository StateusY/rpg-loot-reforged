$execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["rpgloot.forge","rpgloot.block","smithed.block","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"rpgloot:forge"}},Rotation:[$(rotation),0.0],Passengers:\
    [\
        {id:"minecraft:interaction",Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_base","smithed.block","smithed.entity","smithed.strict"],height:-0.501,width:1.01,response:true},\
        {id:"minecraft:interaction",Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_base","smithed.block","smithed.entity","smithed.strict"],height:0.501,width:1.01,response:true}\
    ]}
# >> If Rotation = 0
#Slot1

$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_1","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot2
$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_2","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot3
$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_3","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot4
$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_4","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot5
$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_5","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot6
$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_6","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot7
$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_7","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot8
$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_8","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot9
$execute if score #0 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_9","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}

# >> If Rotation = 90
#Slot1
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_1","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot2
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_2","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot3
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_3","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot4
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_4","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot5
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_5","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot6
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_6","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot7
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_7","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot8
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_8","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot9
$execute if score #90 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_9","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}

# >> If Rotation = 180
#Slot1
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_1","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot2
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_2","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot3
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_3","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot4
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_4","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot5
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_5","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot6
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_6","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot7
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_7","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot8
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_8","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot9
$execute if score #180 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_9","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}

# >> If Rotation = -90
#Slot1
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_1","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot2
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_2","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot3
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.815 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_3","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot4
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_4","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot5
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_5","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot6
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.5 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_6","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot7
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.815 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_7","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot8
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.5 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_8","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}
#Slot9
$execute if score #-90 constant matches $(rotation) align xyz run summon interaction ~0.185 ~0.91 ~0.185 {Tags:["rpgloot.forge_interaction","rpgloot.forge_interaction_slot_9","smithed.block","smithed.entity","smithed.strict"],height:0.1,width:0.31,response:true,Rotation:[$(rotation),0.0]}