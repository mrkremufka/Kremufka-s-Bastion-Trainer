scoreboard players operation #rsm_action kbt.settings = @s kbt.rc_stageui
scoreboard players set @s kbt.rc_stageui 0
scoreboard players enable @s kbt.rc_stageui
function kbt:routes/creator/stages/navigation/check
function kbt:routes/creator/phases/read
execute store result score #rsm_current_owner kbt.settings run data get storage kbt:routes draft.id
scoreboard players operation #rsm_live_end kbt.settings = #rcpn_count kbt.settings
execute if score #rcpn_next kbt.settings matches 1.. run scoreboard players operation #rsm_live_end kbt.settings = #rcpn_next kbt.settings
execute if score #rcpn_next kbt.settings matches 1.. run scoreboard players remove #rsm_live_end kbt.settings 1
scoreboard players set #rsm_allowed kbt.settings 0
execute if score #rc_nav_allowed kbt.settings matches 1 if score #rsm_owner kbt.settings = #rsm_current_owner kbt.settings if score #rsm_view_phase kbt.settings = #rcpn_phase kbt.settings if score #rsm_count kbt.settings = #rcpn_count kbt.settings run scoreboard players set #rsm_allowed kbt.settings 1
execute unless score #rsm_start kbt.settings = #rcpn_start kbt.settings run scoreboard players set #rsm_allowed kbt.settings 0
execute unless score #rsm_end kbt.settings = #rsm_live_end kbt.settings run scoreboard players set #rsm_allowed kbt.settings 0
execute if data storage kbt:route_move session run scoreboard players set #rsm_allowed kbt.settings 0
execute if score #rsm_allowed kbt.settings matches 1 run function kbt:routes/creator/menu/stages_list/action
execute unless score #rsm_allowed kbt.settings matches 1 run tellraw @s {"text":"The stage list changed or another edit is active Reopen Stages & Preview","color":"yellow"}
