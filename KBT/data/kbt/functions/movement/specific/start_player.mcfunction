function kbt:movement/specific/context
execute if score #sj_context kbt.settings matches 1 run function kbt:movement/specific/open
execute unless score #sj_context kbt.settings matches 1 run tellraw @s {"text":"Open Specific Jump Practice from the Movement lobby while no editor, route or layout copy is active","color":"yellow"}
