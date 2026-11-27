function kbt:routes/creator/history/push
data modify storage kbt:routes draft.stages set from storage kbt:route_edit save_result
data modify storage kbt:routes draft.ready set value 0b
function kbt:routes/creator/text/clear
tellraw @s {"text":"Element updated Save Route to keep the change; Undo restores its previous settings","color":"green"}
