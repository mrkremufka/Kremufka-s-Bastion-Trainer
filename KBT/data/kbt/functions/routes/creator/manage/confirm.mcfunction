scoreboard players set #rc_confirmed kbt.settings 0
execute if score @s kbt.creator matches 1 if score #rc_confirm kbt.settings matches 1.. if data storage kbt:routes editor.pending unless data storage kbt:routes editor.pending{action:3} unless data storage kbt:routes editor.pending{action:5} run scoreboard players set #rc_confirmed kbt.settings 1
execute if score @s kbt.creator matches 1 if score #rc_confirm kbt.settings matches 1..199 if data storage kbt:routes editor.pending{action:3} run scoreboard players set #rc_confirmed kbt.settings 1
execute if score @s kbt.rc_wiz matches 1 if score #rc_confirm kbt.settings matches 1..199 if data storage kbt:routes editor.pending{action:3,browser:1b} run scoreboard players set #rc_confirmed kbt.settings 1
execute if score @s kbt.rc_wiz matches 1 unless score @s kbt.creator matches 1 if score #rc_confirm kbt.settings matches 1..199 if data storage kbt:routes editor.pending{action:5,browser:1b} run scoreboard players set #rc_confirmed kbt.settings 1
execute if score #rc_confirmed kbt.settings matches 1 run function kbt:routes/creator/manage/confirm_active
execute if score @s kbt.creator matches 1 unless score #rc_confirmed kbt.settings matches 1 run tellraw @s {"text":"Confirmation is unavailable or expired Use the current Confirm button after requesting the operation","color":"gray"}
execute if score @s kbt.rc_wiz matches 1 unless score @s kbt.creator matches 1 unless score #rc_confirmed kbt.settings matches 1 run tellraw @s {"text":"Delete confirmation is unavailable or expired Request Delete again if needed","color":"gray"}
