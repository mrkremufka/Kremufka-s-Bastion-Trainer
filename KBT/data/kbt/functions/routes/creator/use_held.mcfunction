scoreboard players set #rc_tool kbt.settings 0
execute store result score #rc_tool kbt.settings run data get entity @s SelectedItem.tag.kbtRouteTool
execute if score #rc_tool kbt.settings matches 9 run function kbt:routes/creator/menu
execute if score #rc_tool kbt.settings matches 9 run scoreboard players set @s kbt.rc_cd 6
execute unless score #rc_tool kbt.settings matches 9 unless score #rc_tool kbt.settings matches 12 unless score #rc_tool kbt.settings matches 15 unless score #rc_tool kbt.settings matches 17 unless score #rc_tool kbt.settings matches 22 if data storage kbt:route_text pending run tellraw @s {"text":"Save or Cancel the pending element first Editor: /trigger kbt.rc_menu set 61","color":"yellow"}
execute if score #rc_tool kbt.settings matches 12 if data storage kbt:route_text pending unless data storage kbt:route_text pending.element{type:12} run tellraw @s {"text":"Save Text or Cancel Text before starting a Chat Message","color":"yellow"}
execute if score #rc_tool kbt.settings matches 12 if data storage kbt:route_text pending.element{type:12} run function kbt:routes/creator/message/add_point
execute if score #rc_tool kbt.settings matches 15 if data storage kbt:route_text pending.element{type:15} run function kbt:routes/creator/region/add_point
execute if score #rc_tool kbt.settings matches 17 if data storage kbt:route_text pending.element{type:17} run function kbt:routes/creator/hoglin_region/add_point
execute unless data storage kbt:route_text pending if score #rc_tool kbt.settings matches 1..17 unless score #rc_tool kbt.settings matches 9 store result storage kbt:routes draft.tool int 1 run scoreboard players get #rc_tool kbt.settings
execute unless data storage kbt:route_text pending if score #rc_tool kbt.settings matches 1..17 unless score #rc_tool kbt.settings matches 16 unless score #rc_tool kbt.settings matches 9 run function kbt:routes/creator/use
execute unless data storage kbt:route_text pending if score #rc_tool kbt.settings matches 16 run function kbt:routes/creator/remove/start
execute unless data storage kbt:route_text pending if score #rc_tool kbt.settings matches 18 run function kbt:routes/creator/phase_copy/start
execute unless data storage kbt:route_text pending if score #rc_tool kbt.settings matches 19 run function kbt:routes/creator/edit/start
execute unless data storage kbt:route_text pending if score #rc_tool kbt.settings matches 20 run function kbt:routes/creator/move/start
execute unless data storage kbt:route_text pending if score #rc_tool kbt.settings matches 21 store result storage kbt:routes draft.tool int 1 run scoreboard players get #rc_tool kbt.settings
execute unless data storage kbt:route_text pending if score #rc_tool kbt.settings matches 21 run function kbt:routes/creator/use
execute if score #rc_tool kbt.settings matches 22 run function kbt:routes/creator/stages/navigation/use
