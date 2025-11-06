
execute store result score .splinter_dmg rpgloot.temp run function rpgc:z_api/attribute/get {id:"ranged_dmg"}
execute store result score .splinter_mult rpgloot.temp run function rpgc:z_api/attribute/get {id:"dmg_mult"}
scoreboard players operation .splinter_dmg rpgloot.temp *= .splinter_mult rpgloot.temp
scoreboard players operation .splinter_dmg rpgloot.temp /= #100 constant

function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
function rpgloot:items/basic/wood/bow/random
function rpgloot:items/basic/wood/bow/start_splinter with storage rpgloot:temp spliter
scoreboard players reset .splinter_dmg
scoreboard players reset .cast