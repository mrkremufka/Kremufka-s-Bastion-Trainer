execute if score @s kbt.creator matches 1 run scoreboard players set #rc_tool kbt.settings 8
execute if score @s kbt.creator matches 1 run data modify storage kbt:routes draft.tool set value 8
execute if score @s kbt.creator matches 1 run function kbt:routes/creator/tool_label
execute if score @s kbt.creator matches 1 run tellraw @s {"text":"Hold Place Text and right-click a block (range 6)","color":"aqua"}
