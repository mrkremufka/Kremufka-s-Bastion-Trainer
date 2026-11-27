scoreboard players set #rc_redo_ok kbt.settings 0
execute if score @s kbt.creator matches 1 if data storage kbt:routes editor.redo[-1] run function kbt:routes/creator/history/redo_restore
execute if score @s kbt.creator matches 1 unless score #rc_redo_ok kbt.settings matches 1 run tellraw @s {"text":"Nothing to redo","color":"gray"}
