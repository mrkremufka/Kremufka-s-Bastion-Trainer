execute store result score #rc_action kbt.settings run data get storage kbt:routes editor.pending.action
execute if score #rc_action kbt.settings matches 1 run function kbt:routes/creator/manage/new_confirmed
execute if score #rc_action kbt.settings matches 2 run function kbt:routes/creator/manage/open_confirmed
execute if score #rc_action kbt.settings matches 3 run function kbt:routes/creator/manage/delete_confirmed
execute if score #rc_action kbt.settings matches 4 run function kbt:routes/creator/manage/discard_confirmed
execute if score #rc_action kbt.settings matches 5 run function kbt:routes/creator/drafts/delete_confirmed
data remove storage kbt:routes editor.pending
scoreboard players set #rc_confirm kbt.settings 0
