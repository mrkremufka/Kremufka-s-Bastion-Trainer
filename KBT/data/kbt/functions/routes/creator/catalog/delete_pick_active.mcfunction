data remove storage kbt:routes editor.pending
scoreboard players set #rc_confirm kbt.settings 0
scoreboard players operation #rc_delete_slot kbt.settings = @s kbt.rc_pick
scoreboard players remove #rc_delete_slot kbt.settings 10
data remove storage kbt:route_runtime delete_target
execute if score #rc_delete_slot kbt.settings matches 1 if data storage kbt:route_runtime list_choices[0] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[0]
execute if score #rc_delete_slot kbt.settings matches 2 if data storage kbt:route_runtime list_choices[1] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[1]
execute if score #rc_delete_slot kbt.settings matches 3 if data storage kbt:route_runtime list_choices[2] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[2]
execute if score #rc_delete_slot kbt.settings matches 4 if data storage kbt:route_runtime list_choices[3] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[3]
execute if score #rc_delete_slot kbt.settings matches 5 if data storage kbt:route_runtime list_choices[4] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[4]
execute if score #rc_delete_slot kbt.settings matches 6 if data storage kbt:route_runtime list_choices[5] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[5]
execute if score #rc_delete_slot kbt.settings matches 7 if data storage kbt:route_runtime list_choices[6] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[6]
execute if score #rc_delete_slot kbt.settings matches 8 if data storage kbt:route_runtime list_choices[7] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[7]
execute if score #rc_delete_slot kbt.settings matches 9 if data storage kbt:route_runtime list_choices[8] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[8]
execute if score #rc_delete_slot kbt.settings matches 10 if data storage kbt:route_runtime list_choices[9] run data modify storage kbt:route_runtime delete_target set from storage kbt:route_runtime list_choices[9]
scoreboard players set #rc_delete_valid kbt.settings 0
execute if data storage kbt:route_runtime delete_target{source:1} unless data storage kbt:route_runtime delete_target.import_key run function kbt:routes/creator/catalog/delete_pick_found
execute unless score #rc_delete_valid kbt.settings matches 1 run tellraw @s {"text":"This saved entry changed, disappeared or is read-only Reopen Saved Routes and try again","color":"yellow"}
