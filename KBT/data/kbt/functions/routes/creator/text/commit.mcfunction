scoreboard players set #rc_text_existing kbt.settings 0
execute if data storage kbt:route_text pending.edit{active:1b} run scoreboard players set #rc_text_existing kbt.settings 1
execute if score #rc_text_existing kbt.settings matches 1 run function kbt:routes/creator/edit/save
execute if score #rc_text_existing kbt.settings matches 0 run function kbt:routes/creator/text/commit_new
