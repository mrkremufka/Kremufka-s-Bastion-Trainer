scoreboard players set #mv_bounds kbt.settings 1
execute store result score #mv_ax kbt.settings run data get storage kbt:routes draft.anchor.pos[0] 10000
execute store result score #mv_ay kbt.settings run data get storage kbt:routes draft.anchor.pos[1] 10000
execute store result score #mv_az kbt.settings run data get storage kbt:routes draft.anchor.pos[2] 10000
data modify storage kbt:route_move point set from storage kbt:route_move session.choice.element
function kbt:routes/creator/move/translate
data modify storage kbt:route_move candidate set from storage kbt:route_move point
execute if data storage kbt:route_move candidate.area[0] run data modify storage kbt:route_move area_queue set from storage kbt:route_move candidate.area
execute if data storage kbt:route_move candidate.area[0] run data modify storage kbt:route_move area_result set value []
execute if data storage kbt:route_move candidate.area[0] run function kbt:routes/creator/move/area
execute if data storage kbt:route_move candidate.area[0] run data modify storage kbt:route_move candidate.area set from storage kbt:route_move area_result
execute if score #mv_bounds kbt.settings matches 1 run function kbt:routes/creator/move/commit
execute unless score #mv_bounds kbt.settings matches 1 run tellraw @s {"text":"Move stays inside the bastion arena That step would leave its bounds","color":"yellow"}
execute if data storage kbt:route_move session run function kbt:routes/creator/move/menu
