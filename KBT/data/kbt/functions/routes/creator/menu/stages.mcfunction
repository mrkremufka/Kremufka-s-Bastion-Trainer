function kbt:routes/creator/phases/read
execute store result score #rsm_owner kbt.settings run data get storage kbt:routes draft.id
scoreboard players operation #rsm_view_phase kbt.settings = #rcpn_phase kbt.settings
scoreboard players set #rsm_ten kbt.settings 10
scoreboard players operation #rsm_page kbt.settings = #rcpn_selected kbt.settings
scoreboard players operation #rsm_page kbt.settings -= #rcpn_start kbt.settings
scoreboard players operation #rsm_page kbt.settings /= #rsm_ten kbt.settings
function kbt:routes/creator/menu/stages_render
