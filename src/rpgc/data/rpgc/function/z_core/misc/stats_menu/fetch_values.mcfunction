execute store result storage rpgc:temp stats.hp double 0.01 run function rpgc:z_api/attribute/get {id:"max_hp"}
execute store result storage rpgc:temp stats.armor double 0.01 run function rpgc:z_api/attribute/get {id:"armor"}
execute store result storage rpgc:temp stats.pen double 0.01 run function rpgc:z_api/attribute/get {id:"pen"}

execute store result storage rpgc:temp stats.velocity double 1 run function rpgc:z_api/attribute/get {id:"velocity"}
execute store result storage rpgc:temp stats.accuracy double 1 run function rpgc:z_api/attribute/get {id:"accuracy"}
execute store result storage rpgc:temp stats.draw_speed double 1 run function rpgc:z_api/attribute/get {id:"draw_speed"}

execute store result storage rpgc:temp stats.dmg_mult double 1 run function rpgc:z_api/attribute/get {id:"dmg_mult"}
execute store result storage rpgc:temp stats.crit_chance double 1 run function rpgc:z_api/attribute/get {id:"crit_chance"}
execute store result storage rpgc:temp stats.crit_damage double 1 run function rpgc:z_api/attribute/get {id:"crit_damage"}
execute store result storage rpgc:temp stats.over_crit double 1 run function rpgc:z_api/attribute/get {id:"over_crit"}

execute store result storage rpgc:temp stats.dodge double 1 run function rpgc:z_api/attribute/get {id:"dodge"}

execute store result storage rpgc:temp stats.vamp double 1 run function rpgc:z_api/attribute/get {id:"vamp"}





