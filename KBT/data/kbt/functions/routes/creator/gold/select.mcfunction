scoreboard players set #rc_tool kbt.settings 21
data modify storage kbt:routes draft.tool set value 21
function kbt:routes/creator/tool_label
function kbt:routes/creator/gold/give
tellraw @s {"text":"Throw Gold: right-click block faces Face-adjacent target cells join into one area; each separate area needs its own gold throw","color":"yellow"}
