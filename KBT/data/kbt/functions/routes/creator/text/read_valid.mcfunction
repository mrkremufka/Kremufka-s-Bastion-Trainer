data modify storage kbt:route_text previous_text set from storage kbt:route_text pending.element.text
data modify storage kbt:route_text pending.element.text.value set from entity @s SelectedItem.tag.pages[0]
data modify storage kbt:route_text pending.element.text.advanced set from storage kbt:route_text input_mode
function kbt:routes/creator/text/render
execute unless score #rc_text_rendered kbt.settings matches 1 run data modify storage kbt:route_text pending.element.text set from storage kbt:route_text previous_text
execute if score #rc_text_rendered kbt.settings matches 1 run tellraw @s {"text":"Message updated Choose styles, then Save Text","color":"aqua"}
function kbt:routes/creator/text/menu
