function kbt:settings/presets/context
execute if score #ps_context kbt.settings matches 1 run function kbt:settings/presets/dispatch
execute unless score #ps_context kbt.settings matches 1 run tellraw @s {"text":"Use Presets beside the General Practice settings chest, outside practice or editing","color":"yellow"}
scoreboard players set @s kbt.preset 0
