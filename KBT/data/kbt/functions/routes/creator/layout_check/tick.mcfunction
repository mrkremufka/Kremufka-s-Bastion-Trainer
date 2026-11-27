scoreboard players set #lv_continue kbt.settings 1
execute unless entity @a[tag=kbt.lv_owner,scores={kbt.creator=1},nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run scoreboard players set #lv_continue kbt.settings 0
execute if score #rp_job kbt.settings matches 1.. run scoreboard players set #lv_continue kbt.settings 0
execute if score #rc_generating kbt.settings matches 1 run scoreboard players set #lv_continue kbt.settings 0
scoreboard players set #lv_current_id kbt.settings 0
execute store result score #lv_current_id kbt.settings run data get storage kbt:routes draft.id
execute unless score #lv_current_id kbt.settings = #lv_id kbt.settings run scoreboard players set #lv_continue kbt.settings 0
execute if score #lv_active kbt.settings matches 1 if score #lv_continue kbt.settings matches 0 run tellraw @a[tag=kbt.lv_owner] {"text":"Layout check cancelled: the editor or layout changed","color":"yellow"}
execute if score #lv_continue kbt.settings matches 0 run function kbt:routes/creator/layout_check/cancel
execute if score #lv_active kbt.settings matches 1 in minecraft:the_nether as @a[tag=kbt.lv_owner,limit=1] at @s run function kbt:routes/creator/layout_check/batch
execute if score #lv_active kbt.settings matches 1 run schedule function kbt:routes/creator/layout_check/tick 1t replace
