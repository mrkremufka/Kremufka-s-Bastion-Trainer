scoreboard players set #rc_gen_ok kbt.settings 0
execute if score @s kbt.creator matches 1 unless score #ki_busy kbt.settings matches 1 unless score #rp_job kbt.settings matches 1.. unless score #rc_generating kbt.settings matches 1 if entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] if data storage kbt:routes draft{source:1} unless data storage kbt:routes draft.import_key run function kbt:routes/creator/generation/check
execute if score #rc_gen_ok kbt.settings matches 1 run function kbt:routes/creator/generation/open_valid
execute unless score #rc_gen_ok kbt.settings matches 1 run tellraw @s {"text":"Open a saved Custom route first Wait for imports or layout copying to finish","color":"yellow"}
