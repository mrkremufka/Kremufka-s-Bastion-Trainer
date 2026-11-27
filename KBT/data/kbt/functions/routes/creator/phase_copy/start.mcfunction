scoreboard players set @s kbt.rc_cd 6
scoreboard players set #cp_allowed kbt.settings 1
execute unless score @s kbt.creator matches 1 run scoreboard players set #cp_allowed kbt.settings 0
execute unless data storage kbt:routes draft{source:1} run scoreboard players set #cp_allowed kbt.settings 0
execute if data storage kbt:routes draft.import_key run scoreboard players set #cp_allowed kbt.settings 0
execute if data storage kbt:route_text pending run scoreboard players set #cp_allowed kbt.settings 0
execute if score #rp_job kbt.settings matches 1.. run scoreboard players set #cp_allowed kbt.settings 0
execute if score #ki_busy kbt.settings matches 1 run scoreboard players set #cp_allowed kbt.settings 0
execute if score #rc_generating kbt.settings matches 1 run scoreboard players set #cp_allowed kbt.settings 0
execute unless score #cp_allowed kbt.settings matches 1 run tellraw @s {"text":"Use Fix current phase in the editor after saving or cancelling any pending element and finishing imports/layout generation","color":"yellow"}
execute if score #cp_allowed kbt.settings matches 1 run function kbt:routes/creator/phase_copy/locate
