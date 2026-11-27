function kbt:settings/presets/context
execute if score #ps_context kbt.settings matches 1 run scoreboard players set @s kbt.ps_page 0
execute if score #ps_context kbt.settings matches 1 run function kbt:settings/presets/menu
execute unless score #ps_context kbt.settings matches 1 run tellraw @s {"text":"Open Presets beside the General Practice settings chest after finishing practice or editing","color":"yellow"}
