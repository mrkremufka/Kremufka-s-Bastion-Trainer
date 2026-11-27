data modify storage kbt:route_timer display.locator set value '{"text":""}'
tag @e[type=minecraft:armor_stand,tag=kbt.rp_target,scores={kbt.rp_done=1..}] remove kbt.rp_target
execute unless entity @e[type=minecraft:armor_stand,tag=kbt.rp_marker,tag=kbt.rp_target] run function kbt:routes/practice/locator/select
execute if entity @e[type=minecraft:armor_stand,tag=kbt.rp_marker,tag=kbt.rp_target] run function kbt:routes/practice/locator/direction
