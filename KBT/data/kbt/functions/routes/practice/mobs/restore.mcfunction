kill @e[tag=bastion_mob,type=!minecraft:player,x=936,y=128,z=936,dx=127,dy=127,dz=127]
data modify storage kbt:route_mobs queue set value []
execute if data storage kbt:route_practice route.mobs run data modify storage kbt:route_mobs queue set from storage kbt:route_practice route.mobs
scoreboard players set #rp_mob_policy kbt.settings 0
execute unless data storage kbt:route_practice route{mode:"movement"} run function kbt:routes/practice/mobs/policy/prepare
execute unless data storage kbt:route_practice route.mobs unless data storage kbt:route_mobs queue[0] run tellraw @s {"text":"This older route has no saved mobs Recreate it with Create Route or bind a clean bastion with mobs","color":"yellow"}
execute if data storage kbt:route_mobs queue[0] run function kbt:routes/practice/mobs/next
function kbt:debug/initialize
