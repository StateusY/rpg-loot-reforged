execute store result storage rpgloot:temp particles.x double 0.2 run random value -10..10
execute store result storage rpgloot:temp particles.y double 0.2 run random value -10..10
execute store result storage rpgloot:temp particles.z double 0.2 run random value -10..10

function rpgloot:items/basic/silver/sword/particles/charge/particle with storage rpgloot:temp particles
