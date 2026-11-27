execute if score @s kbt.creator matches 1 if data storage kbt:routes editor.history[-1] run function kbt:routes/creator/history/restore
execute if score @s kbt.creator matches 1 unless data storage kbt:routes editor.history[-1] unless score #rc_undo_ok kbt.settings matches 1 run tellraw @s {"text":"Nothing to undo","color":"gray"}
scoreboard players set #rc_undo_ok kbt.settings 0
