data modify storage kbt:route_edit selection set value {choices:[],offset:0}
execute store result storage kbt:route_edit selection.mode int 1 run scoreboard players get #re_mode kbt.settings
data modify storage kbt:route_edit selection.snapshot set from storage kbt:routes draft
data modify storage kbt:route_edit selection.draft_id set from storage kbt:routes draft.id
data modify storage kbt:route_edit selection.generation set value 0
execute if data storage kbt:routes draft.generation run data modify storage kbt:route_edit selection.generation set from storage kbt:routes draft.generation
data modify storage kbt:route_edit selection.stages set from storage kbt:routes draft.stages
execute store result score #re_x kbt.settings run data get storage kbt:route_runtime hit_pos[0]
execute store result score #re_y kbt.settings run data get storage kbt:route_runtime hit_pos[1]
execute store result score #re_z kbt.settings run data get storage kbt:route_runtime hit_pos[2]
execute store result score #re_ax kbt.settings run data get storage kbt:routes draft.anchor.pos[0]
execute store result score #re_ay kbt.settings run data get storage kbt:routes draft.anchor.pos[1]
execute store result score #re_az kbt.settings run data get storage kbt:routes draft.anchor.pos[2]
execute if score #re_aim_mode kbt.settings matches 1 run function kbt:routes/creator/edit/exact_target
scoreboard players operation #re_x kbt.settings -= #re_ax kbt.settings
scoreboard players operation #re_y kbt.settings -= #re_ay kbt.settings
scoreboard players operation #re_z kbt.settings -= #re_az kbt.settings
scoreboard players operation #re_above kbt.settings = #re_y kbt.settings
scoreboard players add #re_above kbt.settings 1
data modify storage kbt:route_edit stage_queue set from storage kbt:routes draft.stages
scoreboard players set #re_stage_slot kbt.settings 0
scoreboard players set #re_kind kbt.settings 0
execute if score #re_mode kbt.settings matches 1..2 run function kbt:routes/creator/edit/endpoints
execute if data storage kbt:route_edit stage_queue[0] run function kbt:routes/creator/edit/stage
execute store result score #re_count kbt.settings run data get storage kbt:route_edit selection.choices
execute if score #re_count kbt.settings matches 1 run data modify storage kbt:route_edit selection.page_choices set from storage kbt:route_edit selection.choices
execute if score #re_count kbt.settings matches 1 run scoreboard players set @s kbt.rc_edit 1
execute if score #re_count kbt.settings matches 1 run function kbt:routes/creator/edit/pick
execute if score #re_count kbt.settings matches 2.. run function kbt:routes/creator/edit/menu
execute if score #re_count kbt.settings matches 0 run tellraw @s {"text":"No matching objects here Aim directly at a visible object, or try Preview All","color":"yellow"}
