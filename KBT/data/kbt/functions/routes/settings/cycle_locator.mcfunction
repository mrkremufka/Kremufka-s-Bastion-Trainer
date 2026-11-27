function kbt:settings/click
scoreboard players add #rp_locator kbt.settings 1
execute if score #rp_locator kbt.settings matches 2.. run scoreboard players set #rp_locator kbt.settings 0
function kbt:routes/settings/render