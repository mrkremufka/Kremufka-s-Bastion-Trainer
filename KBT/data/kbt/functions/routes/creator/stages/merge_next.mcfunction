execute if score @s kbt.creator matches 1 run function kbt:routes/creator/stages/read
scoreboard players set #rc_can_merge kbt.settings 0
execute if score @s kbt.creator matches 1 if score #rc_stage kbt.settings < #rc_count kbt.settings run scoreboard players set #rc_can_merge kbt.settings 1
execute if score #rc_can_merge kbt.settings matches 1 run function kbt:routes/creator/stages/merge_begin
execute if score @s kbt.creator matches 1 unless score #rc_can_merge kbt.settings matches 1 run tellraw @s {"text":"There is no next stage to merge","color":"gray"}
