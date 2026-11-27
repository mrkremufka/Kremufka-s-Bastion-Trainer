execute if data storage kbt:routes editor.pending{slot:0} run data remove storage kbt:routes draft
execute if data storage kbt:routes editor.pending{slot:0} run data remove storage kbt:routes editor.history
execute if data storage kbt:routes editor.pending{slot:0} run data remove storage kbt:routes editor.redo
execute if data storage kbt:routes editor.pending{slot:1} run data remove storage kbt:routes editor.backup_draft
tellraw @s {"text":"Draft deleted Saved routes, trails and PBs were kept","color":"green"}
function kbt:routes/creator/drafts/list
