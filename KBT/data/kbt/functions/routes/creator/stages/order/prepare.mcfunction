scoreboard players operation #rsm_dest kbt.settings = #rsm_target kbt.settings
execute if score #rsm_action kbt.settings matches 11..20 run scoreboard players remove #rsm_dest kbt.settings 1
execute if score #rsm_action kbt.settings matches 21..30 run scoreboard players add #rsm_dest kbt.settings 1
scoreboard players set #rsm_can_move kbt.settings 0
execute if score #rsm_dest kbt.settings >= #rsm_start kbt.settings if score #rsm_dest kbt.settings <= #rsm_end kbt.settings run scoreboard players set #rsm_can_move kbt.settings 1
execute if score #rsm_can_move kbt.settings matches 1 run function kbt:routes/creator/stages/order/commit
execute unless score #rsm_can_move kbt.settings matches 1 run tellraw @s {"text":"Stages can only move within their phase","color":"yellow"}
