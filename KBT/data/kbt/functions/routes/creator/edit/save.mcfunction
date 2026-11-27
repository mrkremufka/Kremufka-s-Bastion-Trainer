data modify storage kbt:route_edit probe set from storage kbt:route_text pending.edit.stages
execute store success score #re_stale kbt.settings run data modify storage kbt:route_edit probe set from storage kbt:routes draft.stages
scoreboard players set #re_generation kbt.settings 0
execute if data storage kbt:routes draft.generation store result score #re_generation kbt.settings run data get storage kbt:routes draft.generation
execute store result score #re_selected_generation kbt.settings run data get storage kbt:route_text pending.edit.generation
execute unless score #re_generation kbt.settings = #re_selected_generation kbt.settings run scoreboard players set #re_stale kbt.settings 1
execute if score #re_stale kbt.settings matches 0 run function kbt:routes/creator/edit/save_valid
execute if score #re_stale kbt.settings matches 1 run tellraw @s {"text":"The route changed during editing Cancel and select the element again; your draft was kept","color":"yellow"}
