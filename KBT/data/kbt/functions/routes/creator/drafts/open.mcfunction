scoreboard players set #rc_draft_open kbt.settings 1
execute if score #rp_active kbt.settings matches 1 run scoreboard players set #rc_draft_open kbt.settings 0
execute if score #ki_busy kbt.settings matches 1 run scoreboard players set #rc_draft_open kbt.settings 0
execute if score #rp_job kbt.settings matches 1.. run scoreboard players set #rc_draft_open kbt.settings 0
execute if score #rc_generating kbt.settings matches 1 run scoreboard players set #rc_draft_open kbt.settings 0
execute if score @s kbt.edit matches 1..3 run scoreboard players set #rc_draft_open kbt.settings 0
execute unless entity @s[nbt={Dimension:"minecraft:the_nether"},nbt=!{Health:0.0f}] run scoreboard players set #rc_draft_open kbt.settings 0
execute if score #rc_draft_open kbt.settings matches 0 run tellraw @s {"text":"Finish the current operation and return to the Nether lobby before opening a draft","color":"yellow"}
data remove storage kbt:route_practice candidate
execute if score #rc_draft_open kbt.settings matches 1 if score @s kbt.rc_menu matches 131 run data modify storage kbt:route_practice candidate set from storage kbt:route_runtime draft_choices[0]
execute if score #rc_draft_open kbt.settings matches 1 if score @s kbt.rc_menu matches 132 run data modify storage kbt:route_practice candidate set from storage kbt:route_runtime draft_choices[1]
execute if data storage kbt:route_practice candidate{source:1} unless data storage kbt:route_practice candidate.import_key if data storage kbt:route_practice candidate.layout{mode:"snapshot",schema:1} run function kbt:routes/creator/drafts/restore
execute if score #rc_draft_open kbt.settings matches 1 unless data storage kbt:route_practice candidate.layout{mode:"snapshot",schema:1} run tellraw @s {"text":"This draft has no prepared layout to restore","color":"yellow"}
