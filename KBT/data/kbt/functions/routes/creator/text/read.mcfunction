scoreboard players set #rc_text_length kbt.settings 0
execute store result score #rc_text_length kbt.settings run data get entity @s SelectedItem.tag.pages[0]
execute if score #rc_text_length kbt.settings matches 1..1024 run function kbt:routes/creator/text/read_valid
execute unless score #rc_text_length kbt.settings matches 1..1024 run tellraw @s {"text":"Page 1 must contain 1..1024 characters","color":"red"}
