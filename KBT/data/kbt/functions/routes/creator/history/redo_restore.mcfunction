function kbt:routes/creator/text/clear
function kbt:routes/creator/history/append
data modify storage kbt:routes draft set from storage kbt:routes editor.redo[-1]
data remove storage kbt:routes editor.redo[-1]
scoreboard players set #rc_redo_ok kbt.settings 1
function kbt:routes/creator/refresh
tellraw @s {"text":"Change redone Save Route to update the committed catalogue","color":"aqua"}
