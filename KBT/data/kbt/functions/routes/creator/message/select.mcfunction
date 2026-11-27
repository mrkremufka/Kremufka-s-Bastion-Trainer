execute if score @s kbt.creator matches 1 run scoreboard players set #rc_tool kbt.settings 12
execute if score @s kbt.creator matches 1 run data modify storage kbt:routes draft.tool set value 12
execute if score @s kbt.creator matches 1 run function kbt:routes/creator/tool_label
execute if score @s kbt.creator matches 1 run tellraw @s {"text":"Hold Chat Message and right-click to place it Choose Enter Area or Stage Entry in its editor For Enter Area, keep right-clicking at other positions to extend the area, then Save Message","color":"aqua"}
