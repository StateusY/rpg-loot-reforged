data merge storage rpgc:temp {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}
data modify storage rpgc:uuid in set from entity @s UUID

execute store result score 0= gu.main store result score 1= gu.main run data get storage rpgc:uuid in[0]
execute store result storage rpgc:temp 0 int 1 run scoreboard players operation 0= gu.main %= 256 num
execute store result score 2= gu.main run scoreboard players operation 1= gu.main /= 256 num
execute store result storage rpgc:temp 1 int 1 run scoreboard players operation 1= gu.main %= 256 num
execute store result score 3= gu.main run scoreboard players operation 2= gu.main /= 256 num
execute store result storage rpgc:temp 2 int 1 run scoreboard players operation 2= gu.main %= 256 num
execute store result storage rpgc:temp 3 int 1 run scoreboard players operation 3= gu.main /= 256 num

execute store result score 0= gu.main store result score 1= gu.main run data get storage rpgc:uuid in[1]
execute store result storage rpgc:temp 4 int 1 run scoreboard players operation 0= gu.main %= 256 num
execute store result score 2= gu.main run scoreboard players operation 1= gu.main /= 256 num
execute store result storage rpgc:temp 5 int 1 run scoreboard players operation 1= gu.main %= 256 num
execute store result score 3= gu.main run scoreboard players operation 2= gu.main /= 256 num
execute store result storage rpgc:temp 6 int 1 run scoreboard players operation 2= gu.main %= 256 num
execute store result storage rpgc:temp 7 int 1 run scoreboard players operation 3= gu.main /= 256 num

execute store result score 0= gu.main store result score 1= gu.main run data get storage rpgc:uuid in[2]
execute store result storage rpgc:temp 8 int 1 run scoreboard players operation 0= gu.main %= 256 num
execute store result score 2= gu.main run scoreboard players operation 1= gu.main /= 256 num
execute store result storage rpgc:temp 9 int 1 run scoreboard players operation 1= gu.main %= 256 num
execute store result score 3= gu.main run scoreboard players operation 2= gu.main /= 256 num
execute store result storage rpgc:temp a int 1 run scoreboard players operation 2= gu.main %= 256 num
execute store result storage rpgc:temp b int 1 run scoreboard players operation 3= gu.main /= 256 num

execute store result score 0= gu.main store result score 1= gu.main run data get storage rpgc:uuid in[3]
execute store result storage rpgc:temp c int 1 run scoreboard players operation 0= gu.main %= 256 num
execute store result score 2= gu.main run scoreboard players operation 1= gu.main /= 256 num
execute store result storage rpgc:temp d int 1 run scoreboard players operation 1= gu.main %= 256 num
execute store result score 3= gu.main run scoreboard players operation 2= gu.main /= 256 num
execute store result storage rpgc:temp e int 1 run scoreboard players operation 2= gu.main %= 256 num
execute store result storage rpgc:temp f int 1 run scoreboard players operation 3= gu.main /= 256 num

function rpgc:-/uuid/get_hexes with storage rpgc:temp
function rpgc:-/uuid/concat_uuid with storage rpgc:temp
