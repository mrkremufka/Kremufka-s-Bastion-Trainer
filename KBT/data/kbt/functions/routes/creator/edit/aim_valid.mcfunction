function kbt:routes/creator/tool_label
execute store result storage kbt:routes draft.tool int 1 run scoreboard players get #rc_tool kbt.settings
data remove storage kbt:route_edit selection
data remove storage kbt:route_move session
data remove storage kbt:route_runtime hit_pos
scoreboard players set #re_aim_mode kbt.settings 0
scoreboard players set #re_ray_hit kbt.settings 0
scoreboard players set #re_ray_steps kbt.settings 0
execute store result score #re_owner kbt.settings run data get storage kbt:routes draft.id
execute store result score #re_view kbt.settings run data get storage kbt:routes draft.stage
scoreboard players operation #re_chain kbt.settings = #re_view kbt.settings
scoreboard players remove #re_chain kbt.settings 1
execute at @s anchored eyes positioned ^ ^ ^ run function kbt:routes/creator/edit/ray
execute if score #re_ray_hit kbt.settings matches 0 at @s run function kbt:routes/creator/ray/start
execute if data storage kbt:route_runtime hit_pos run function kbt:routes/creator/edit/target
execute unless data storage kbt:route_runtime hit_pos run tellraw @s {"text":"Aim at the object or its block within 8 blocks Heads can be selected directly","color":"yellow"}
