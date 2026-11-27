function kbt:loadout/edit_begin
scoreboard players set @s kbt.edit 3
tellraw @s {"text":"Editing Loadout 3 Use creative to arrange the inventory you want to save","color":"aqua"}
function kbt:loadout/save_prompt
