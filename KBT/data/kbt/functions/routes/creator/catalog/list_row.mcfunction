data modify storage kbt:route_runtime list_entry set from storage kbt:route_runtime list_queue[0]
data modify storage kbt:route_runtime list_choices append from storage kbt:route_runtime list_queue[0]
scoreboard players set #rc_list_diff kbt.settings 0
execute store result score #rc_list_diff kbt.settings run data get storage kbt:route_runtime list_queue[0].difficulty
execute if score #rc_page kbt.settings matches 10 run function kbt:routes/creator/catalog/list_slot_1
execute if score #rc_page kbt.settings matches 9 run function kbt:routes/creator/catalog/list_slot_2
execute if score #rc_page kbt.settings matches 8 run function kbt:routes/creator/catalog/list_slot_3
execute if score #rc_page kbt.settings matches 7 run function kbt:routes/creator/catalog/list_slot_4
execute if score #rc_page kbt.settings matches 6 run function kbt:routes/creator/catalog/list_slot_5
execute if score #rc_page kbt.settings matches 5 run function kbt:routes/creator/catalog/list_slot_6
execute if score #rc_page kbt.settings matches 4 run function kbt:routes/creator/catalog/list_slot_7
execute if score #rc_page kbt.settings matches 3 run function kbt:routes/creator/catalog/list_slot_8
execute if score #rc_page kbt.settings matches 2 run function kbt:routes/creator/catalog/list_slot_9
execute if score #rc_page kbt.settings matches 1 run function kbt:routes/creator/catalog/list_slot_10
data remove storage kbt:route_runtime list_queue[0]
scoreboard players remove #rc_page kbt.settings 1
execute if score #rc_page kbt.settings matches 1.. if data storage kbt:route_runtime list_queue[0] run function kbt:routes/creator/catalog/list_row
