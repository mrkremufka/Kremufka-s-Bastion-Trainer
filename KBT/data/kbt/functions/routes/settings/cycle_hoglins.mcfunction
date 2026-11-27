function kbt:settings/click
scoreboard players add #rp_hoglins kbt.settings 1
execute if score #rp_hoglins kbt.settings matches 3.. run scoreboard players set #rp_hoglins kbt.settings 0
scoreboard players set #rb_pb_dirty kbt.settings 1
function kbt:routes/settings/render
