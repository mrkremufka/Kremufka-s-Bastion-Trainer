data remove storage kbt:route_naming candidate
data modify storage kbt:route_naming candidate set from entity @s SelectedItem.tag.title
scoreboard players set #rc_name_limit kbt.settings 16
function kbt:routes/creator/naming/check