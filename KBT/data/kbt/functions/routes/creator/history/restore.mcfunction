function kbt:routes/creator/text/clear
execute unless data storage kbt:routes editor.redo run data modify storage kbt:routes editor.redo set value []
data modify storage kbt:routes editor.redo append from storage kbt:routes draft
data modify storage kbt:routes draft set from storage kbt:routes editor.history[-1]
data remove storage kbt:routes editor.history[-1]
scoreboard players set #rc_undo_ok kbt.settings 1
function kbt:routes/creator/refresh
tellraw @s {"text":"Last change undone The committed catalogue was not changed","color":"aqua"}
