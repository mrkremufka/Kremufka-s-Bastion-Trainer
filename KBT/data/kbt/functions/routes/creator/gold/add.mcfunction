scoreboard players set #rc_gold_duplicate kbt.settings 0
data modify storage kbt:route_runtime gold_stages set from storage kbt:routes draft.stages
execute if data storage kbt:route_runtime gold_stages[0] run function kbt:routes/creator/gold/scan_stage
execute unless score #rc_gold_duplicate kbt.settings matches 1 run function kbt:routes/creator/points/commit
execute if score #rc_gold_duplicate kbt.settings matches 1 run tellraw @s {"text":"This cell is already part of a Throw Gold area in this stage","color":"yellow"}
