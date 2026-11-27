tag @s remove kbt.rp_generation
data modify storage kbt:route_practice route set from storage kbt:route_practice job_record
data modify storage kbt:route_practice element set from storage kbt:route_practice route.start
function kbt:routes/practice/marker/spawn
data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1] Rotation set from storage kbt:route_practice route.start.rotation
tp @s @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1]
data modify entity @e[type=minecraft:armor_stand,tag=kbt.rp_start_point,limit=1] ArmorItems set value [{},{},{},{}]
kill @e[type=minecraft:armor_stand,tag=kbt.rp_start_point]
function kbt:routes/creator/generation/cancel
function kbt:routes/creator/refresh
function kbt:routes/creator/menu
tellraw @s {"text":"Bastion generation updated Checking Start and required block targets","color":"green"}
function kbt:routes/creator/layout_check/open
