scoreboard players operation #rsm_row kbt.settings = #rsm_action kbt.settings
execute if score #rsm_action kbt.settings matches 11..20 run scoreboard players remove #rsm_row kbt.settings 10
execute if score #rsm_action kbt.settings matches 21..30 run scoreboard players remove #rsm_row kbt.settings 20
scoreboard players set #rsm_target kbt.settings 0
function kbt:routes/creator/menu/stages_list/read_slot
execute if score #rsm_action kbt.settings matches 1..10 if score #rsm_target kbt.settings >= #rsm_start kbt.settings if score #rsm_target kbt.settings <= #rsm_end kbt.settings run function kbt:routes/creator/menu/stages_list/select
execute if score #rsm_action kbt.settings matches 11..30 if score #rsm_target kbt.settings >= #rsm_start kbt.settings if score #rsm_target kbt.settings <= #rsm_end kbt.settings run function kbt:routes/creator/stages/order/prepare
execute if score #rsm_action kbt.settings matches 31 run scoreboard players remove #rsm_page kbt.settings 1
execute if score #rsm_action kbt.settings matches 32 run scoreboard players add #rsm_page kbt.settings 1
execute if score #rsm_action kbt.settings matches 31..32 run function kbt:routes/creator/menu/stages_render
