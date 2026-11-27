scoreboard players set #rc_gen_ok kbt.settings 0
execute unless score #ki_busy kbt.settings matches 1 unless score #rp_job kbt.settings matches 1.. unless score #rc_generating kbt.settings matches 1 if score @s kbt.creator matches 1 run function kbt:routes/creator/generation/check
execute store result score #rc_gen_edit_id kbt.settings run data get storage kbt:route_setup edit_generation.id
execute unless score #rc_target kbt.settings = #rc_gen_edit_id kbt.settings run scoreboard players set #rc_gen_ok kbt.settings 0
execute if score #rc_gen_ok kbt.settings matches 1 run function kbt:routes/creator/generation/queue
execute unless score #rc_gen_ok kbt.settings matches 1 run tellraw @s {"text":"Generation change unavailable Reopen its settings after imports/copying finish","color":"yellow"}
