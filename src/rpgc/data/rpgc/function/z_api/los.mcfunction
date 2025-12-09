#function rpgc:z_api/los {target:"@n[type=husk]",cmd:"say e"}
data modify storage rpgc:temp los.xrot set from entity @s Rotation[0]
data modify storage rpgc:temp los.yrot set from entity @s Rotation[1]
$function rpgc:z_core/misc/los/facing {selector:"$(target)",cmd:"$(cmd)"}
function rpgc:z_core/misc/los/return with storage rpgc:temp los