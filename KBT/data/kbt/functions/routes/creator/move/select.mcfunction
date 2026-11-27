scoreboard players set #rc_tool kbt.settings 20
data modify storage kbt:routes draft.tool set value 20
function kbt:routes/creator/tool_label
function kbt:routes/creator/move/give
tellraw @s {"text":"Move: right-click an object, then use the chat controls","color":"green"}
