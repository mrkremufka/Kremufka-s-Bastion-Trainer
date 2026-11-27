function kbt:settings/click
scoreboard players add #rp_checkpoint_sound kbt.settings 1
execute if score #rp_checkpoint_sound kbt.settings matches 2.. run scoreboard players set #rp_checkpoint_sound kbt.settings 0
function kbt:routes/settings/render
