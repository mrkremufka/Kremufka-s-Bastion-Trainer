function kbt:settings/click
scoreboard players add #piglins kbt.settings 1
execute if score #piglins kbt.settings matches 2.. run scoreboard players set #piglins kbt.settings 0
function kbt:settings/render
