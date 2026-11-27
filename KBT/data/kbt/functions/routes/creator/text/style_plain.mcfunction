data modify storage kbt:route_text previous_text set from storage kbt:route_text pending.element.text
execute if score @s kbt.rc_menu matches 70..85 run scoreboard players operation #rc_text_color kbt.settings = @s kbt.rc_menu
execute if score @s kbt.rc_menu matches 70..85 run scoreboard players remove #rc_text_color kbt.settings 70
execute if score @s kbt.rc_menu matches 70..85 store result storage kbt:route_text pending.element.text.color int 1 run scoreboard players get #rc_text_color kbt.settings
execute if score @s kbt.rc_menu matches 52 store result score #rc_text_color kbt.settings run data get storage kbt:route_text pending.element.text.color
execute if score @s kbt.rc_menu matches 52 run scoreboard players add #rc_text_color kbt.settings 1
execute if score #rc_text_color kbt.settings matches 16.. run scoreboard players set #rc_text_color kbt.settings 0
execute if score @s kbt.rc_menu matches 52 store result storage kbt:route_text pending.element.text.color int 1 run scoreboard players get #rc_text_color kbt.settings
execute if score @s kbt.rc_menu matches 53 store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.bold
execute if score @s kbt.rc_menu matches 53 run scoreboard players add #rc_text_style kbt.settings 1
execute if score #rc_text_style kbt.settings matches 2.. run scoreboard players set #rc_text_style kbt.settings 0
execute if score @s kbt.rc_menu matches 53 store result storage kbt:route_text pending.element.text.bold int 1 run scoreboard players get #rc_text_style kbt.settings
execute if score @s kbt.rc_menu matches 54 store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.italic
execute if score @s kbt.rc_menu matches 54 run scoreboard players add #rc_text_style kbt.settings 1
execute if score #rc_text_style kbt.settings matches 2.. run scoreboard players set #rc_text_style kbt.settings 0
execute if score @s kbt.rc_menu matches 54 store result storage kbt:route_text pending.element.text.italic int 1 run scoreboard players get #rc_text_style kbt.settings
execute if score @s kbt.rc_menu matches 55 store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.underlined
execute if score @s kbt.rc_menu matches 55 run scoreboard players add #rc_text_style kbt.settings 1
execute if score #rc_text_style kbt.settings matches 2.. run scoreboard players set #rc_text_style kbt.settings 0
execute if score @s kbt.rc_menu matches 55 store result storage kbt:route_text pending.element.text.underlined int 1 run scoreboard players get #rc_text_style kbt.settings
execute if score @s kbt.rc_menu matches 56 store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.strikethrough
execute if score @s kbt.rc_menu matches 56 run scoreboard players add #rc_text_style kbt.settings 1
execute if score #rc_text_style kbt.settings matches 2.. run scoreboard players set #rc_text_style kbt.settings 0
execute if score @s kbt.rc_menu matches 56 store result storage kbt:route_text pending.element.text.strikethrough int 1 run scoreboard players get #rc_text_style kbt.settings
execute if score @s kbt.rc_menu matches 57 store result score #rc_text_style kbt.settings run data get storage kbt:route_text pending.element.text.obfuscated
execute if score @s kbt.rc_menu matches 57 run scoreboard players add #rc_text_style kbt.settings 1
execute if score #rc_text_style kbt.settings matches 2.. run scoreboard players set #rc_text_style kbt.settings 0
execute if score @s kbt.rc_menu matches 57 store result storage kbt:route_text pending.element.text.obfuscated int 1 run scoreboard players get #rc_text_style kbt.settings
function kbt:routes/creator/text/render
execute unless score #rc_text_rendered kbt.settings matches 1 run data modify storage kbt:route_text pending.element.text set from storage kbt:route_text previous_text
function kbt:routes/creator/text/menu
